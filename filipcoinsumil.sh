##Start with Displaying Welcome to Flip Coin Simulation Program on Master #Branch
echo ""
echo "Welcome to Flip Coin Simulation Program "
echo "This problem displays the winner Heads or Tails"
echo ""

#As a simulator, loop through Multiple times of flipping a coin and show number of times head and tail has won

 for (( i = 0; ; i++ )); do
 	flip=$((RANDOM%2))
 	if [[ ${flip} -eq 0 ]]; then
 		echo HEADS
 		h=$((h+1))
 	elif [[ ${flip} -eq 1 ]]; then
 		echo TAILS
 		t=$((t+1))
 	fi
 	echo " HEADS : $h times     TAILS : $t times"
 done

 echo ""
