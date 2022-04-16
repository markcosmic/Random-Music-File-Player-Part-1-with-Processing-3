import ddf.minim.*;
Minim minim;
AudioPlayer song;
String[] songNames;
String nowPlaying;
int index, prevIndex;

void setup(){
  surface.setLocation(0, 0);
  size(800, 600);
  minim = new Minim(this);
  songNames = loadStrings("songData.txt");
  nowPlaying = " ";
  textAlign(CENTER, CENTER);
}

void draw(){
  background(0);
  fill(255);
  textSize(width/23);
  text("Click in window to load a random song\n\nNOW PLAYING: \n" + 
      nowPlaying, width/2, height/8);
  if(song != null && !song.isPlaying()){
    loadSong();
  }
}

void mouseReleased(){
  loadSong();
}
