#!/bin/bash

while true; do
    # Displaying the prompt
    echo -n "#cisfun$ "

    # Read user input
    read command

    # Check for the end of file (Ctrl+D)
    if [ -z "$command" ]; then
        echo "Exiting the shell. Goodbye!"
        break
    fi

    # Execute the command using execve
    if [ -x "$command" ]; then
        exec ./$command
    else
        echo "$0: $command: No such file or directory"
    fi
done
