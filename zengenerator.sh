

echo "Press 'q' to exit zen generator."
play -q "water.wav" repeat 1000000000  &
while true; do
minmax=$(( (RANDOM % 9) + 0 ))
bamboo=$(find /bamboo -type f | shuf -n 1)
sleepdur="0."
sleepdur+=$minmax
play -q "$bamboo" vol "$sleepdur" &
sleep $sleepdur
sleepdur=""
read -n 1 -t 0.1 input
    if [[ $input = "q" ]] || [[ $input = "Q" ]]; then
        echo "Exiting loop."
        pkill play
        break # Exit the loop if 'q' is pressed
    fi
done
