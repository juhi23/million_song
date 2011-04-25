hadoop fs -rm filelist.txt
hadoop fs -copyFromLocal filelist.txt filelist.txt
hadoop fs -rmr fastest
hadoop jar $SJAR -mapper "/usr/bin/python fastest.py map" -reducer /usr/bin/sort -input filelist.txt -output fastest -file "fastest.py" -file "common.py" -file "hdf5_getters.py"
