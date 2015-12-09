class Button
{
  int bWidth;
  int bHeight;
  public int bX;
  public int bY;
  String bText;
  public boolean clicked = false;
  boolean enabled = true;

  Button(int x, int y, int w, int h, String text)
  {
    bX = x;
    bY = y;
    bWidth = w;
    bHeight = h;
    bText = text;
    updateDisplay();
  }

  public void updateDisplay()
  {
    strokeWeight(5);
    if (clicked) 
      stroke(255);
    else
      stroke(0);
    fill(#E32727);
    rect(bX, bY, bWidth, bHeight);
    fill(255);

    textFont(font, 20);
    text(bText, bX+5, bY+30);
  }

  boolean isClicked(int x, int y)
  {
    if (enabled) {
      if (x> bX && x< bX+bWidth && y>bY && y< bY+bHeight)
      {
        clicked = true;
        return true;
      } else
        return false;
    } else
      return false;
  }
}

