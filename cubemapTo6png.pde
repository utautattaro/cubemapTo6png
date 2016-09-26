PImage img;
PImage[] output = new PImage[6];

void setup(){
  img = loadImage("skyboxsun5deg2.png");
  size(img.width/4,img.height/3);
    
  output[0] = img.get(img.width/4,0,img.width/2,img.height/3);
  output[1] = img.get(0,img.height/3,img.width/4,img.height/3 * 2);
  output[2] = img.get(img.width/4,img.height/3,img.width/2,img.height/3 * 2);
  output[3] = img.get(img.width/2,img.height/3,img.width/4 * 3,img.height/3 * 2);
  output[4] = img.get(img.width/4 * 3,img.height/3,img.width,img.height/3 * 2);
  output[5] = img.get(img.width/4,img.height/3 * 2,img.width/2,img.height);
}

void draw(){
  for(int i = 0;i<output.length;i++)
  {
    image(output[i],0,0);
    save("result/"+i+".png");
    fill(255);
    rect(0,0,width,height);
  }
}


