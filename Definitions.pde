PImage img;
PImage cimg;
PImage cimg2;
PImage logo;
PFont font;
PrintWriter output;
PrintWriter output2;

Button imageProcess;
Button parceling;
Button coordination;
Button save;
Button save2;

Textbox textbox;
Border[] border = new Border[300];
Textbox[] coordinate = new Textbox[8];

String path = "";
String nameSurname = "";

float r, g, b;

boolean parcelingStarted = false;
boolean coordinationstarted = false;

int borderCount = 0;
int pointCount = 0;
int[][] p = new int [20][2];
int bosarazi = 0;
int yesilarazi = 0;
int beyazarazi = 0;
int sulakalan = 0;

double[] coordi = new double[8];
String sCoordi;
