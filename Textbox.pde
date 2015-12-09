class Textbox {

  int textBoxX;
  int textBoxY;
  int textBoxWidth;
  int textBoxHeight;
  public boolean enabled = true;
  boolean clicked = false;
  String text = "";
  boolean dotUsed = false;

  Textbox(int x, int y, int w, int h)
  {
    textBoxX = x;
    textBoxY = y;
    textBoxWidth = w;
    textBoxHeight = h;
    display();
  }

  Textbox(int x, int y)
  {
    textBoxX = x;
    textBoxY = y;
    textBoxWidth = 450;
    textBoxHeight = 30;
    display();
  }

  void display()
  {
    enabled = true;
    noStroke();
    if (!clicked)
      fill(255);
    else
      fill(#E3A917);
    rect(textBoxX, textBoxY, textBoxWidth, textBoxHeight);
    updateText2();
  }

  void updateText(String textBoxText)
  {
    text = textBoxText;
    textFont(font, 26);
    fill(0, 0, 255);
    text(textBoxText, textBoxX+5, textBoxY+25);
  }
  
  void updateText2()
  {
    textFont(font, 16);
    fill(0);
    text(text, textBoxX+5, textBoxY+15);
  }
  

  void disappear()
  {
    enabled = false;
    noStroke();
    fill(0);
    rect(textBoxX, textBoxY, textBoxWidth, textBoxHeight);
    updateText("");
  }

  void setDefault()
  {
    disappear();
    textBoxWidth = 450;
    textBoxHeight = 30;
    updateText("");
    display();
  }

  void clearr()
  {
    noStroke();
    fill(0);
    rect(textBoxX, textBoxY, textBoxWidth, textBoxHeight);
    if (!clicked)
      fill(255);
    else
      fill(#E3A917);
    rect(textBoxX, textBoxY, textBoxWidth, textBoxHeight);
  }

  void isClicked()
  {
    if (mouseX > textBoxX && mouseX < textBoxX+textBoxWidth && mouseY > textBoxY && mouseY < textBoxY + textBoxHeight) 
      clicked = true;
    else
      clicked = false;
    display();
  }
}

