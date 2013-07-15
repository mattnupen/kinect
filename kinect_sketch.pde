import SimpleOpenNI.*;
SimpleOpenNI Kinect;

PVector handVec = new PVector(); 
PVector mapHandVec = new PVector();
color handPointCol = color(255,0,0);

void setup() {
  Kinect = new SimpleOpenNI(this);
  // enable mirror
  Kinect.setMirror(true);
  //enable depthMap generation, hands and gestures
  Kinect.enableDepth();
  Kinect.enableGesture();
  Kinect.enableHands();
  //add focus gesture to initialise tracking 
  Kinect.addGesture("Wave");
  size(Kinect.depthWidth(),Kinect.depthHeight());
}


void draw() {
  Kinect.update();
  Kinect.convertRealWorldToProjective(handVec,mapHandVec);
  //image(Kinect.depthImage(), 0, 0);
  background(mapHandVec.x/2, mapHandVec.y/2, mapHandVec.z/10);
  print(mapHandVec);
  strokeWeight(mapHandVec.z/10);
  point(mapHandVec.x, mapHandVec.y);
}
  
