void loadComponents()
{
  output = createWriter("ParselData.txt");
  output2 = createWriter("EnlemBoylam.txt");
  selectInput("Select a map to process:", "fileSelected");
  font = loadFont("myFont27.vlw");
  
  logo = loadImage("logo.png");
  imageProcess = new Button(10, 13, 100, 50, " Harita Analizi");
  parceling = new Button(230, 13, 100, 50, "  Parselleme");
  coordination = new Button(120, 13, 105, 50, " Koordinatlama");
  
  logo.resize(logo.width/2,logo.height/2);
  image(logo,width-90,10);
}
