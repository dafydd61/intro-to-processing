/**
 * Four
 * 
 * 4-colour capture. Built on Getting Started with Capture. 
 */

import processing.video.*;

Capture cam;

void setup() {
  size(1280, 720);

  String[] cameras = Capture.list();

  if (cameras == null) {
    println("Failed to retrieve the list of available cameras, will try the default...");
    cam = new Capture(this, 640, 360);
  } if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    printArray(cameras);

    // The camera can be initialized directly using an element
    // from the array returned by list():
    cam = new Capture(this, cameras[0]);
    // Or, the settings can be defined based on the text in the list
    //cam = new Capture(this, 640, 480, "Built-in iSight", 30);
    
    // Start capturing the images from the camera
    cam.start();
  }
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  tint(255);
  image(cam, 0, 0, 640, 360);
  tint(255, 0, 255);
  image(cam, width/2, 0, 640, 360);
  tint(0, 0, 255);
  image(cam, 0, height/2, 640, 360);
  tint(255, 255, 0);
  image(cam, width/2, height/2, 640, 360);
}