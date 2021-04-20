class Planet {
  
  PShape globe;
  PImage img;
  float diameter;
  float dFromSun;
  float x = 0.01;
  float rSunSpeed;
  float rSelfSpeed;
  float selfRotation;
  float sunSize = 1392000/10;
  float sunR = 63;
  // tempD = diameter, tempImg = texture, mKmFromSun = millon km, tempRS = orbital sun Speed, tempSR = self rotation speed, 
  Planet(float tempD, String tempImg, float mKmFromSun, float tempRS, float tempSR){
    diameter = tempD/1000;
    img = loadImage(tempImg);
    dFromSun = mKmFromSun/2 + sunR;
    rSunSpeed = tempRS/250000;
    rSelfSpeed = tempSR/250000;
    selfRotation = tempSR/250000;
  }

  void display() {
    rotateY(PI/3.0 +x);
  
      pushMatrix();
    noFill();
    stroke(200,255,0,50);
    rotateX(PI/2);
    circle(0,0,dFromSun*2);
      popMatrix();
  
      pushMatrix();
    translate(0,0,dFromSun);
    rotateY(selfRotation);
    globe = createShape(SPHERE, diameter);
    globe.setStroke(false); 
    globe.setTexture(img);
    shape(globe, 0, 0);
      popMatrix();
    
    x+= rSunSpeed;
    selfRotation += rSelfSpeed;
  }
}
