function __z_complete -d "add completions"
    complete -c $Z_CMD -a "(__z -l | string replace -r '^\\S*\\s*' '')" -f -k
    complete -c $ZO_CMD -a "(__z -l | string replace -r '^\\S*\\s*' '')" -f -k

    complete -c $Z_CMD -s c -l clean -d "Cleans out $Z_DATA"
    complete -c $Z_CMD -s e -l echo -d "Prints best match, no cd"
    complete -c $Z_CMD -s l -l list -d "List matches, no cd"
    complete -c $Z_CMD -s p -l purge -d "Purges $Z_DATA"
    complete -c $Z_CMD -s r -l rank -d "Searches by rank, cd"
    complete -c $Z_CMD -s t -l recent -d "Searches by recency, cd"
    complete -c $Z_CMD -s h -l help -d "Print help"
    complete -c $Z_CMD -s x -l delete -d "Removes the current directory from $Z_DATA"
end
