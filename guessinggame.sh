function guess {
    local count=$(ls $1 | wc -l)
    local is_right_guess=0
    local guess_count=0
    
    echo "Let's guess files count in $1"

    while [[ is_right_guess -ne 1 ]]
    do
        echo "Enter the number..."
        read user_guess
        let guess_count=$(($guess_count+1))

        if [[ $user_guess -gt $count ]]
        then
            echo "Noop. Too high. Let's try again :)"
        elif [[ $user_guess -lt $count ]]
        then
            echo "Noop. Too low. Let's try again :)"
        else
            echo "Tadam! You are damn right! You did it on the $guess_count try."
            let is_right_guess=1
        fi
    done
}

if [[ $# -eq 0 ]]
then
   guess $PWD
else
   guess $1
fi
