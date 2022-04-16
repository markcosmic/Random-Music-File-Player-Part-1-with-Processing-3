void loadSong(){
  if(song != null && song.isPlaying()){
    song.pause();
  }
  while(index == prevIndex){
    index = int(random(0, songNames.length)); 
  }
  prevIndex = index;
  File f = new File(dataPath(songNames[index]));
  if(f.isFile()){
    song = minim.loadFile(songNames[index]); 
    nowPlaying = songNames[index];
    song.play();
  }
}
