/* @pjs preload="really.jpg"; */
PImage img;

void setup() {
size(800, 500);
img = loadImage("really.jpg");
image(img, 0, 0);
}

void draw() 
{

}

void mouseDragged()
{
//"Carves" the pumpkins
/* blendMode(OVERLAY);
blendMode is not supported on the web
blendColor is an option
see http://processingjs.org/reference/
*/

noStroke();
int c = blendColor(get(mouseX,mouseY),color(255, 200, 25),OVERLAY);
fill(c);
//fill(255, 200, 25);
ellipse(mouseX, mouseY, 5, 5);
}
