#!/vendor/bin/sh
ROOT_PATH="/sdcard"
CMD="/vendor/bin/iwpriv"
rm $ROOT_PATH/iwpriv_result.txt
while read line
do
    echo $line >> $ROOT_PATH/iwpriv_result.txt
    $CMD $line >> $ROOT_PATH/iwpriv_result.txt 2>&1
done < $ROOT_PATH/iwpriv_para.txt
setprop persist.sys.iwpriv 0
exit 0

