//Global Variables
int appWidth, appHeight;
String title="Ramadan Mubarak!!", footer="Come Celebrate";
PFont titleFont, footerFont; 
color purple=#2C08FF, resetDefaultInk=#FFFFFF, yellow = #E9FF00;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xRectText, yRectText, widthRectText, heightRectText;
float xRectTextQuit, yRectTextQuit, widthRectTextQuit, heightRectTextQuit;
//String ; //All text variables as name=value pairs
PImage ramadan;
//PFont ; //All fonts used
//color ; //colour palette & inks
int sizeFont, size; //Text Variables
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/10;
  widthTitle = appWidth*1/2;
  heightTitle= appHeight*2/10;
  xFooter = xTitle;
  yFooter = appHeight*7/10;
  widthFooter = widthTitle;
  heightFooter = heightTitle;
//
//
void setup() {
  //Print & Println
  println("Ramadan Kareem");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(600, 400);
  appWidth = width;
  appHeight = height;
  //
  //Population
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  xRectQuit = appWidth*1/4;
  yRectQuit = appHeight*1/4;
  widthRectQuit = appWidth*1/2;
  heightRectQuit = appHeight*1/2;
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/10;
  widthTitle = appWidth*1/2;
  heightTitle= appHeight*2/10;
  xFooter = xTitle;
  yFooter = appHeight*7/10;
  widthFooter = widthTitle;
  heightFooter = heightTitle;
  ramadan = loadImage("../Saved Pictures/realistic-three-dimensional-ramadan-kareem-illustration_52683-57837.jpg");
  //
  //DIVs or rect()
  // Layout our text space and typographical features
  rect( xTitle, yTitle, widthTitle, heightTitle, xFooter, yFooter, widthFooter, heightFooter );
  rect( xFooter, yFooter, widthFooter, heightFooter );
    //rect( xTitle, yTitle, widthTitle, heightTitle );
  //rect( xFooter, yFooter, widthFooter, heightFooter );
  //
  // Text Setup
  // Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //Lists all fonts available on OS
  //printArray(fontList);
  titleFont = createFont("Harrington", 55);
  footerFont = createFont("ArialMT", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //rect(); //Image, foreground, near the top
  //rect(); //Copy and Paste this for all rect()s
  //
  // Text Setup
  // Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //Lists all fonts available on OS
  //printArray(fontList);
  //[fontName] = createFont("[fontSpelling]", [startingFontSize]);
  //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
}  //End setup
//
void draw() {
  //Text is same size or relative to rect()
  //
  //Drawing Font Code
  //
  //CAUTION: review this tomorrow
  fill(purple); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 60;
  textFont(titleFont, size);
  text ( title, xTitle, yTitle, widthTitle, heightTitle );
  fill(yellow); //ink
  textAlign(CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 120;
  textFont(footerFont, size);
  text ( footer, xFooter, yFooter, widthFooter, heightFooter );
  fill(resetDefaultInk); //ink
  //
  //
  //rect(  ); //Title: 
  //rect(   ); //Footer: 
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  image(ramadan, xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  //Drawing Text, copied for each line of text
  //fill( [colourName] ); //ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  //size = [pixelNumberFontSize]; //integer number
  //textFont( [fontVariable], size ); // states which font to use
  //text ( [textStringName], [four rect() variables copied from DIVs]);
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  //When mouse is pressed
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  //
} //End mousePressed
//
//End MAIN Program
