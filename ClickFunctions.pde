void mousePressed()
{
  if (imageProcess.isClicked(mouseX, mouseY))
  {
    background(0);
    image(logo, width-90, 10);

    parcelingStarted = false;
    coordinationstarted = false;
    parceling.clicked = false;
    coordination.clicked = false;
    nameSurname = "";

    pointCount = 0;
    borderCount = 0;

    lastClicked = 999;
    bosarazi = 0;
    yesilarazi = 0;
    sulakalan = 0;
    beyazarazi = 0;


    cimg.copy(img, 0, 0, img.width, img.height, 0, 0, cimg.width, cimg.height);
    cimg = imageProcess(cimg);
    cimg.updatePixels();
    image(cimg, (width-cimg.width)/2, (height-cimg.height)/2);

    printInfo();
  }

  if (parceling.isClicked(mouseX, mouseY))
  {
    background(0);
    image(logo, width-90, 10);
    imageProcess.clicked = false;
    coordination.clicked = false;
    coordinationstarted = false;
    lastClicked = 999;

    loadResizeDisplay();
    save = new Button(width-80, height-75, 75, 50, "  Kaydet");
    textbox = new Textbox(10, height-50);

    parcelingStarted = true;
  }

  if (save instanceof Button )
    if (save.isClicked(mouseX, mouseY) && parceling.clicked)
    {
      saveData();
      pointCount = 0;
      nameSurname = "";
      textbox.setDefault();
      println("Data has been saved.");
    }

  if (parcelingStarted)
  {
    if (isPointInMap(mouseX, mouseY))
    {
      p[pointCount][0] = mouseX -  (width-img.width)/2;
      p[pointCount][1] = mouseY - (height-img.height)/2;

      fill(0, 255, 0);
      noStroke();
      rect(p[pointCount][0]-5 + (width-img.width)/2, p[pointCount][1]-5 + (height-img.height)/2, 10, 10);
      pointCount++;
    }

    if (pointCount > 1)
    {
      border[borderCount] = new Border(p[pointCount-2][0]+ (width-img.width)/2, p[pointCount-2][1] + (height-img.height)/2, p[pointCount-1][0]+ (width-img.width)/2, p[pointCount-1][1] +(height-img.height)/2);
      border[borderCount].updateDisplay();
      borderCount++;
    }
  }

  if (coordination.isClicked(mouseX, mouseY))
  {
    background(0);
    image(logo, width-90, 10);
    parcelingStarted = false;
    parceling.clicked = false;
    imageProcess.clicked = false;
    coordinationstarted = true;
    nameSurname = "";

    save2 = new Button(width-80, height-75, 75, 50, "  Kaydet");

    pointCount = 0;
    borderCount = 0;

    bosarazi = 0;
    yesilarazi = 0;
    sulakalan = 0;
    beyazarazi = 0;


    cimg2.copy(img, 0, 0, img.width, img.height, 0, 0, cimg2.width, cimg2.height);

    int l = 75;
    image(cimg2, (width-cimg2.width)/2, (height-cimg2.height)/2);

    fill(0, 255, 0);
    stroke(0, 255, 0);
    ellipse((width-cimg2.width)/2, (height-cimg2.height)/2, 20, 20); //sol 
    line((width-cimg2.width)/2, (height-cimg2.height)/2, (width-cimg2.width)/2+l, (height-cimg2.height)/2-l);
    fill(255);
    text("E", (width-cimg2.width)/2+l+5, (height-cimg2.height)/2-l+17);
    text("B", (width-cimg2.width)/2+l+5, (height-cimg2.height)/2-l+17+25);
    coordinate[0] = new Textbox((width-cimg2.width)/2+l+5+10, (height-cimg2.height)/2-l, 150, 18);
    coordinate[1] = new Textbox((width-cimg2.width)/2+l+5+10, (height-cimg2.height)/2-l+25, 150, 18);

    fill(0, 255, 0);
    stroke(0, 255, 0);
    ellipse((width-cimg2.width)/2+cimg2.width, (height-cimg2.height)/2, 20, 20); //sag üst
    line((width-cimg2.width)/2+cimg2.width, (height-cimg2.height)/2, (width-cimg2.width)/2+cimg2.width-l, (height-cimg2.height)/2-l);
    fill(255);
    text("E", (width-cimg2.width)/2+cimg2.width-l-165, (height-cimg2.height)/2-l+17);
    text("B", (width-cimg2.width)/2+cimg2.width-l-165, (height-cimg2.height)/2-l+17+25);
    coordinate[2] = new Textbox((width-cimg2.width)/2+cimg2.width-l-155, (height-cimg2.height)/2-l, 150, 18);
    coordinate[3] = new Textbox((width-cimg2.width)/2+cimg2.width-l-155, (height-cimg2.height)/2-l+25, 150, 18);


    fill(0, 255, 0);
    stroke(0, 255, 0);
    ellipse((width-cimg2.width)/2, (height-cimg2.height)/2 + cimg2.height, 20, 20); //sol alt
    line((width-cimg2.width)/2, (height-cimg2.height)/2 + cimg2.height, (width-cimg2.width)/2 + l, (height-cimg2.height)/2 + cimg2.height+l);
    fill(255);
    text("E", (width-cimg2.width)/2 + l +5, (height-cimg2.height)/2+5+ cimg2.height+l+17);
    text("B", (width-cimg2.width)/2 + l +5, (height-cimg2.height)/2+5+ cimg2.height+l+17+25);
    coordinate[4] = new Textbox((width-cimg2.width)/2 + l +5 +10, (height-cimg2.height)/2+5+ cimg2.height+l, 150, 18);
    coordinate[5] = new Textbox((width-cimg2.width)/2 + l +5 +10, (height-cimg2.height)/2+5+ cimg2.height+l+25, 150, 18);


    fill(0, 255, 0);
    stroke(0, 255, 0);
    ellipse((width-cimg2.width)/2 + cimg2.width, (height-cimg2.height)/2 + cimg2.height, 20, 20); //sag alt
    line((width-cimg2.width)/2 + cimg2.width, (height-cimg2.height)/2 + cimg2.height, (width-cimg2.width)/2 + cimg2.width -l, (height-cimg2.height)/2 + cimg2.height+l);
    fill(255);
    text("E", (width-cimg2.width)/2 + cimg2.width -l-155-10, (height-cimg2.height)/2 + cimg2.height+l+17);
    text("B", (width-cimg2.width)/2 + cimg2.width -l-155-10, (height-cimg2.height)/2 + cimg2.height+l+17+25);
    coordinate[6] = new Textbox((width-cimg2.width)/2 + cimg2.width -l-155, (height-cimg2.height)/2 + cimg2.height+l, 150, 18);
    coordinate[7] = new Textbox((width-cimg2.width)/2 + cimg2.width -l-155, (height-cimg2.height)/2 + cimg2.height+l+25, 150, 18);
  }

  if (coordinationstarted)
  {
    for (int i = 0; i< 8; i++)
    {
      coordinate[i].isClicked();
      if (coordinate[i].clicked) {
        lastClicked = i;
        sCoordi = "";
      }
    }
  }

  if (save2 instanceof Button )
    if (save2.isClicked(mouseX, mouseY) && coordination.clicked)
    {
      saveCoordinates();
      for (int i = 0; i < 8; i++) {
        coordinate[i].text = "";
        coordinate[i].clearr();
        coordinate[i].updateText2();
      }
      println("Data has been saved.");
    }
}

int lastClicked = 999;

