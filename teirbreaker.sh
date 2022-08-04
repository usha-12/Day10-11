#Start with Displaying Welcome to Employee Wage Computation Program on Master #Branch

echo ""
echo "Welcome to Flip Coin Simulation Program "
echo "This problem displays the winner Heads or Tails"
echo ""


#Extend UC 3 to ensure if its tie then the game continues till the difference of minimum 2 points is achieved
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

if [[ $h -eq $t ]]; then
	echo "It's a tie!"
	echo "Tie breaker Round"
	while [[ $((h-$t)) -ne 2 && $((t-$h)) -ne 2 ]]; do
	flip=$((RANDOM%2))
	if [[ ${toss} -eq 0 ]]; then
    	echo HEADS
    	h=$((h+1))
	elif [[ ${toss} -eq 1 ]]; then
    	echo TAILS
    	t=$((t+1))
	fi
done
fi

if [[ $t > $h ]]; then
	echo "TAILS won by $((t-$h)) times."
elif [[ $t < $h  ]]; then
	echo "HEADS won by $((h-$t)) times."
fi

echo " HEADS : $h times     TAILS : $t times"
echo ""


