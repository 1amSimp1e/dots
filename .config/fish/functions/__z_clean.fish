function __z_clean -d "Clean up .z file to remove paths no longer valid"
    set -l tmpfile (mktemp $Z_DATA.XXXXXX)

    if test -f $tmpfile
        while read line
            set -l path (string split '|' $line)[1]
            test -d $path; and echo $line
        end <$Z_DATA >$tmpfile
        command mv -f $tmpfile $Z_DATA
    end
end
