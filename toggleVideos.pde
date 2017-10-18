import processing.video.*;
Movie mov1;
Movie mov2;

Boolean playMov1 = true;

void setup () {
  size(700, 700);
  //因为视频文件太大所以没有上传，需要你自己找两个视频文件
  //然后把下面的文件名替换成你自己的视频文件
  //扩展名也需要包括在内
  //视频放到与这个sketch同级的data文件夹内
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