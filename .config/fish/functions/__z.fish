function __z -d "Jump to a recent directory."
    function __print_help -d "Print z help."
        printf "Usage: $Z_CMD  [-celrth] string1 string2...\n\n"
        printf "         -c --clean    Removes directories that no longer exist from $Z_DATA\n"
        printf "         -d --dir      Opens matching directory using system file manager.\n"
        printf "         -e --echo     Prints best match, no cd\n"
        printf "         -l --list     List matches and scores, no cd\n"
        printf "         -p --purge    Delete all entries from $Z_DATA\n"
        printf "         -r --rank     Search by rank\n"
        printf "         -t --recent   Search by recency\n"
        printf "         -x --delete   Removes the current directory from $Z_DATA\n"
        printf "         -h --help     Print this help\n\n"
    end
    function __z_legacy_escape_regex
        # taken from escape_string_pcre2 in fish
        # used to provide compatibility with fish 2
        for c in (string split '' $argv)
            if contains $c (string split '' '.^$*+()?[{}\\|-]')
                printf \\
            end
            printf '%s' $c
        end
    end

    set -l options h/help c/clean e/echo l/list p/purge r/rank t/recent d/directory x/delete

    argparse $options -- $argv

    if set -q _flag_help
        __print_help
        return 0
    else if set -q _flag_clean
        __z_clean
        printf "%s cleaned!\n" $Z_DATA
        return 0
    else if set -q _flag_purge
        echo >$Z_DATA
        printf "%s purged!\n" $Z_DATA
        return 0
    else if set -q _flag_delete
        sed -i -e "\:^$PWD|.*:d" $Z_DATA
        return 0
    end

    set -l typ

    if set -q _flag_rank
        set typ rank
    else if set -q _flag_recent
        set typ recent
    end

    set -l z_script '
        function frecent(rank, time) {
            dx = t-time
            if( dx < 3600 ) return rank*4
            if( dx < 86400 ) return rank*2
            if( dx < 604800 ) return rank/2
            return rank/4
        }

        function output(matches, best_match, common) {
            # list or return the desired directory
            if( list ) {
                cmd = "sort -nr"
                for( x in matches ) {
                    if( matches[x] ) {
                        printf "%-10s %s\n", matches[x], x | cmd
                    }
                }
            } else {
                if( common ) best_match = common
                print best_match
            }
        }

        function common(matches) {
            # find the common root of a list of matches, if it exists
            for( x in matches ) {
                if( matches[x] && (!short || length(x) < length(short)) ) {
                    short = x
                }
            }
            if( short == "/" ) return
            for( x in matches ) if( matches[x] && index(x, short) != 1 ) {
                    return
                }
            return short
        }

        BEGIN {
            hi_rank = ihi_rank = -9999999999
        }
        {
            if( typ == "rank" ) {
                rank = $2
            } else if( typ == "recent" ) {
                rank = $3 - t
            } else rank = frecent($2, $3)
            if( $1 ~ q ) {
                matches[$1] = rank
            } else if( tolower($1) ~ tolower(q) ) imatches[$1] = rank
            if( matches[$1] && matches[$1] > hi_rank ) {
                best_match = $1
                hi_rank = matches[$1]
            } else if( imatches[$1] && imatches[$1] > ihi_rank ) {
                ibest_match = $1
                ihi_rank = imatches[$1]
            }
        }

        END {
        # prefer case sensitive
            if( best_match ) {
                output(matches, best_match, common(matches))
            } else if( ibest_match ) {
                output(imatches, ibest_match, common(imatches))
            }
        }
    '

    set -l qs
    for arg in $argv
        set -l escaped $arg
        if string escape --style=regex '' >/dev/null 2>&1 # use builtin escape if available
            set escaped (string escape --style=regex $escaped)
        else
            set escaped (__z_legacy_escape_regex $escaped)
        end
        # Need to escape twice, see https://www.math.utah.edu/docs/info/gawk_5.html#SEC32
        set escaped (string replace --all \\ \\\\ $escaped)
        set qs $qs $escaped
    end
    set -l q (string join '.*' $qs)

    if set -q _flag_list
        # Handle list separately as it can print common path information to stderr
        # which cannot be captured from a subcommand.
        command awk -v t=(date +%s) -v list="list" -v typ="$typ" -v q="$q" -F "|" $z_script "$Z_DATA"
        return
    end

    set target (command awk -v t=(date +%s) -v typ="$typ" -v q="$q" -F "|" $z_script "$Z_DATA")

    if test "$status" -gt 0
        return
    end

    if test -z "$target"
        printf "'%s' did not match any results\n" "$argv"
        return 1
    end

    if set -q _flag_echo
        printf "%s\n" "$target"
    else if set -q _flag_directory
        if test -n "$ZO_METHOD"
            type -q "$ZO_METHOD"; and "$ZO_METHOD" "$target"; and return $status
            echo "Cannot open with ZO_METHOD set to $ZO_METHOD"; and return 1
        else if test "$OS" = Windows_NT
            # Be careful, in msys2, explorer always return 1
            type -q explorer; and explorer "$target"
            return 0
            echo "Cannot open file explorer"
            return 1
        else
            type -q xdg-open; and xdg-open "$target"; and return $status
            type -q open; and open "$target"; and return $status
            echo "Not sure how to open file manager"; and return 1
        end
    else
        pushd "$target"
    end
end
