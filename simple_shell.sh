#!/bin/bash

while true; do
    # Displaying the prompt
    echo -n "#cisfun$ "

    # Read user input
    read -r command

    # Check for the end of file (Ctrl+D)
    if [ -z "$command" ]; then
        echo "Exiting the shell. Goodbye!"
        break
    fi

    # Execute the command using execve
    if command -v "$command" > /dev/null; then
        $command
    else
        echo "$0: $command: command not found"
    fi
done
