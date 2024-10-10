#!/bin/bash
pgrep -f infinite.sh | xargs -r kill
# pids=$(pgrep -f infinite.sh)

# if [ -n "$pids" ]; then
#     for pid in $pids; do
#         kill "$pid" && echo "Killed process with PID: $pid"
#     done
# else
#     echo "No infinite.sh process found."
# fi
