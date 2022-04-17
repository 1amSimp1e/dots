function __z_add -d "Add PATH to .z file"
    test -n "$fish_private_mode"; and return 0

    for i in $Z_EXCLUDE
        if string match -r $i $PWD >/dev/null
            return 0 #Path excluded
        end
    end

    set -l tmpfile (mktemp $Z_DATA.XXXXXX)

    if test -f $tmpfile
        set -l path (string replace --all \\ \\\\ $PWD)
        command awk -v path=$path -v now=(date +%s) -F "|" '
      BEGIN {
          rank[path] = 1
          time[path] = now
      }
      $2 >= 1 {
          if( $1 == path ) {
              rank[$1] = $2 + 1
              time[$1] = now
          }
          else {
              rank[$1] = $2
              time[$1] = $3
          }
          count += $2
      }
      END {
          if( count > 1000 ) {
              for( i in rank ) print i "|" 0.9*rank[i] "|" time[i] # aging
          }
          else for( i in rank ) print i "|" rank[i] "|" time[i]
      }
    ' $Z_DATA 2>/dev/null >$tmpfile

        if test ! -z "$Z_OWNER"
            chown $Z_OWNER:(id -ng $Z_OWNER) $tmpfile
        end
        #
        # Don't use redirection here as it can lead to a race condition where $Z_DATA is clobbered.
        # Note: There is a still a possible race condition where an old version of $Z_DATA is
        #       read by one instance of Fish before another instance of Fish writes its copy.
        #
        command mv $tmpfile $Z_DATA
        or command rm $tmpfile
    end
end
