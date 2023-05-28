num=$1
rev=""
while [ $num -gt 0 ];do
    mod=`echo $num % 10 | bc`
    if [ $mod -ne 0 ]; then
        rev=${rev}${mod}
    fi
    num=`echo $num / 10 | bc`
done
echo "$rev"
