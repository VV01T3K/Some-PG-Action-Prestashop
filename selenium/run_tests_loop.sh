#!/bin/bash

LOG_FILE="test_logs.log"

NUM_LOOPS=${1:-10}

echo "Starting test loop for $NUM_LOOPS runs. Logs will be appended to $LOG_FILE"

for ((i=1; i<=NUM_LOOPS; i++)); do
    echo "==========================================" >> "$LOG_FILE"
    echo "Test run $i started at $(date)" >> "$LOG_FILE"
    echo "==========================================" >> "$LOG_FILE"

    bun test:presta >> "$LOG_FILE" 2>&1

    EXIT_CODE=$?

    echo "==========================================" >> "$LOG_FILE"
    if [ $EXIT_CODE -eq 0 ]; then
        echo "Test run $i finished at $(date) - STATUS: PASS" >> "$LOG_FILE"
    else
        echo "Test run $i finished at $(date) - STATUS: FAIL (exit code: $EXIT_CODE)" >> "$LOG_FILE"
    fi
    echo "" >> "$LOG_FILE"

    # Optional: Add a small delay between runs to prevent overwhelming the system
    sleep 1
done

echo "All $NUM_LOOPS test runs completed."