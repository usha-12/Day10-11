#Start with Displaying Welcome to Employee Wage Computation Program on Master #Branch

echo ""
echo "Welcome to Flip Coin Simulation Program "
echo "This problem displays the winner Heads or Tails"
echo ""


# Modify the earlier UC 2 to continue till either of
#them have won 21 times. Show if it’s a Win or Tie. If Win then who won and by how much
t=0; h=0;
while [[ $h -le 21 && $t -le 21 ]]; do
	flip=$((RANDOM%2))
	if [[ ${toss} -eq 0 ]]; then
    	echo HEADS
    	h=$((h+1))
	elif [[ ${toss} -eq 1 ]]; then
    	echo TAILS
    	t=$((t+1))
	fi
done


if [[ $t > $h ]]; then
	echo "TAILS won by $((t-$h)) times."
elif [[ $t < $h  ]]; then
	echo "HEADS won by $((h-$t)) times."
elif [[ $h -eq $t ]]; then
	echo "It's a tie!"
fi

echo " HEADS : $h times     TAILS : $t times"
echo ""



