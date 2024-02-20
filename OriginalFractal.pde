public void setup(){
  size(500,500);
  background(0);
}

public void draw(){
  myFractal(250,250,200);
  ellipseMode(CENTER);
}

int Color = color(38,196,192,10);
int Stroke = color(0);

public void mousePressed(){
  background(0);
  Color = color((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255,10);//(14,170,150,10);
  myFractal(250,250,200);
}

public void keyPressed(){
  background(0);
  if(key == ' '){
   Color = color(38,196,192,10);//original:purple/blue(108,95,229,10);//(41,155,27,10)green
   myFractal(250,250,200);
  }
  if(key == 'r'){
   Color = color(245,25,39,10);//red
   myFractal(250,250,200);
  }
  if(key == 'g'){
   Color = color(41,155,27,10);//green
   myFractal(250,250,200);
  }
  if(key == 'b'){
  Color = color(36,70,234,10);//blue
  myFractal(250,250,200);
  }
  if(key == 'a'){
  Color = color(245,15,138,10);//pink
  myFractal(250,250,200);
  }
  if(key == 'w'){
  Color = color(126,34,152,10);//purple
  myFractal(250,250,200);
  }
  if(key == 's'){
  Color = color(242,132,22,10);//orange
  myFractal(250,250,200);
  }
  if(key == 'd'){
  Color = color(227,242,22,10);//yellow
  myFractal(250,250,200);
  }
}

public void myFractal(int x, int y, int size){
  stroke(Stroke);
  strokeWeight(.5);
  fill(Color);
  ellipse(x,y-100,size,size+50);
  ellipse(x+100,y,size+50,size);
  ellipse(x,y+100,size,size+50);
  ellipse(x-100,y,size+50,size);
  fill(221,247,30);
  ellipse(x,y,size,size);
  
  if(size>10){
    myFractal(x,y,size-48);
  }
}
