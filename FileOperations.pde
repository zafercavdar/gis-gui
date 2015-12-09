void fileSelected(File selection)
{
  if (selection == null)
    path = "sinop.PNG";
  else
    path = selection.getAbsolutePath();

  loadResizeDisplay();
  cimg = new PImage(img.width, img.height);
  cimg2 = new PImage(img.width, img.height);
}

void loadResizeDisplay()
{
  img = loadImage(path);

  double hRatio = (double)img.height / height /2 *3;
  double wRatio = (double)img.width / width;

  if (hRatio > 1 || wRatio > 1)
    img.resize((int)(img.width/maxx(hRatio, wRatio)), (int)(img.height/maxx(hRatio, wRatio)));

  image(img, (width-img.width)/2, (height-img.height)/2);
}

void saveData()
{
  output = createWriter("ParselData.txt");
  output.println("Arazi Sahibi : " + nameSurname.toUpperCase());
  for (int i = 0; i < pointCount; i++) {
    output.println("B: " + pixelToCoordinate(p[i][0],1) + " E: " + pixelToCoordinate(p[i][1],0));
  }
  output.println("B: " + pixelToCoordinate(p[0][0],1) + " E: " + pixelToCoordinate(p[0][1],0));

  output.flush();
  output.close();
}

void saveCoordinates()
{
  output2 = createWriter("EnlemBoylam.txt");
  for (int i = 0; i < 8; i++){
    output2.println(coordinate[i].text);
    if ( coordinate[i].text != "")
    {
      if (Double.parseDouble(coordinate[i].text) != 0)
        coordi[i]= Double.parseDouble(coordinate[i].text);
      else
       coordi[i] = 0;
    }
    else
       coordi[i] = 0;
  }
  output2.flush();
  output2.close();
}

