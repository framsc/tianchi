# song is a link to mars_tianchi_songs.csv
# actions is a link to mars_tianchi_user_actions.csv

artists=$(cut -c9- <songs_uniq_artists)
n=1
for artist in  $artists ; do
  :>tempact
  grep $artist songs |cut -d',' -f 1 >temp
  s=$(cat temp)
  for i in $s ; do
    grep "$i" actions>> tempact
  done
  cut -d',' -f5 <tempact >tempactsum
  sort tempactsum |uniq -c >tempactsumstat
  python pl.py $n
  ((n=n+1))
  #echo 'plot "tempactsumstat" using 2:1 with linespoints' |gnuplot -p
done