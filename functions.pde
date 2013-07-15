void onRecognizeGesture(String strGesture, PVector idPosition, PVector endPosition)
{
  //Kinect.removeGesture(strGesture);
  Kinect.startTrackingHands(endPosition);
}

void onCreateHands(int handid, PVector pos,float time)
{
  handVec = pos;
  handPointCol = color(0, 255, 0);
}

void onUpdateHands(int handid, PVector pos, float time)
{
  handVec = pos;
  
}
