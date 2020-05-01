#! /bin/bash
read -p "enter value of a" a;
read -p "enter value of b" b;
read -p "enter value of c" c;
uc2=$(( $a+$b*$c ));
echo $uc2
uc3=$(( $a*$b+$c ));
echo $uc3
uc4=$((($c+$a)/$b));
echo $uc4
uc5=$((($a%$b)+$c));
echo $uc5
declare -A assoarray;
assoarray[uc2]=$uc2;
assoarray[uc3]=$uc3;
assoarray[uc4]=$uc4;
assoarray[uc5]=$uc5;
array=();
for ele in ${assoarray[@]}
do
   array[i]=${assoarray[$ele]};
   i=$(($i+1));
done
for ((i = 0; i<4; i++))
do
  for((j = 0; j<4-1; j++))
   do
    k=$(($j+1));
    if [ ${array[$j]} -gt ${array[$k]} ]
   then
      temp=${array[j]};
     array[$j]=${array[k]};
      array[$k]=$temp;
fi
done
done
echo "values in ascending order ${array[@]}";
