import processing.video.*;
Movie mov1;
Movie mov2;

Boolean playMov1 = true;

void setup () {
  size(700, 700);
  mov1 = new Movie(this, "balcony_normal.mp4");
  mov2 = new Movie(this, "balcony_plane.mp4");
  mov1.play();
  mov2.play();
}

void draw() {
  if (playMov1) {
    image(mov1, 0, 0);
  } else {
    image(mov2, 0, 0);
  }
}

void movieEvent(Movie m) {
  m.read();
}

void mousePressed() {
  playMov1 = !playMov1;
  print(playMov1);
}