#! /bin/bash
read -p "enter value of a" a;
read -p "enter value of b" b;
read -p "enter value of c" c;
uc2=$(( $a+$b*$c ));
echo $uc2
uc3=$(( $a*$b+$c ));
echo $uc3
