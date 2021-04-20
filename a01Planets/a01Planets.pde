float x = 0.01;
float sunSize = 1392000/50;
  float sunR = 63;
Planet sun;
Planet mercury;
Planet venus;
Planet earth;
Planet mars;
Planet jupiter;
Planet saturn;
Planet uranus;
Planet neptune;

void setup() {
  size(500,500,P3D);
  
  frameRate(60);
  // new Planet (diam, texture, mKmFromSun, orbital speed km/h, self orbital speed km/h)
  sun = new Planet(sunSize, "textures/00sun.jpg", -sunR*2, 0, 0);
  mercury = new Planet (4879.4, "textures/01mercury.jpg", 57.91, 172.404, 10.83);
  venus = new Planet (6779, "textures/02venus.jpg", 108.2, 126.108, 6.52);
  earth = new Planet (12742, "textures/03earth.jpg", 149.6, 107.244, 1674);
  mars = new Planet (6779, "textures/04mars.jpg", 227.9, 86.868, 866);
  jupiter = new Planet (139820, "textures/05jupiter.jpg",  778.5, 47.016, 45.583);
  saturn = new Planet (116460, "textures/06saturn.jpg", 1434, 34.705, 34.705);
  uranus = new Planet (50724, "textures/07uranus.jpg", 2871, 24.516, 14.794);
  neptune = new Planet (49244, "textures/08neptune.jpg", 4495, 19.548, 9.719);
}
    

void draw() {
  float w2 = width/2;
  float h2 = height/2;
  background(32);
  translate(w2, h2, -00);
  
  sun.display();
  
  pushMatrix();
  rotateY(PI/3.0 +x);
  mercury.display();
  venus.display();
  earth.display();
  mars.display();
  jupiter.display();
  saturn.display();
  uranus.display();
  neptune.display();
  popMatrix();

}
