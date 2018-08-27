#!/bin/bash
x=1
while [ $x -le 5 ]
do
  echo "Welcome $x times"
  x=$(( $x + 1 ))
done

while true
do
until [ $count -eq 5 ]
do
        echo " GREEN $count "
        sleep 1
        ((count--))
done
        until [ $count -eq 0 ]
        do
                echo " YELLOW $count"
                sleep 1
                ((count--))
        done
                while [ $count -le 30 ]
                do
                        echo " RED $count "
                        sleep 1
                        count=$(( count + 30 ))
                        break
                done

until [ $count -eq 0 ]
do
        echo " RED $count "
        sleep 1
        ((count--))
done
                while [ $count -le 0 ]
                do

                        count=$(( count + 30))
                        echo " GREEN $count "
                        sleep 1
                        break
                done
        done

