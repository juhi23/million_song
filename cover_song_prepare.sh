cat /mnt/data/AdditionalFiles/shs_dataset_*.txt | python ./cover_song_preprocess.py > cover_songs.txt
hadoop fs -copyFromLocal cover_songs.txt cover_songs.txt
hadoop fs -copyFromLocal /mnt/data/AdditionalFiles/tracks_per_year.txt tracks_per_year.txt

