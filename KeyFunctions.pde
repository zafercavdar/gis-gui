void keyPressed()
{
  if (parceling.clicked && textbox.enabled)
  {
    if (keyCode == BACKSPACE && nameSurname.length() >= 1)
    {
      nameSurname = removeLastChar(nameSurname);
      textbox.clearr();
    } 
    else if (nameSurname.length() < 40)
      nameSurname+= key;
      
    textbox.updateText(nameSurname.toUpperCase());
  }
  
  if (coordination.clicked && lastClicked != 999)
  {
      if (isDigit(key) || (key == '.' && !coordinate[lastClicked].dotUsed))
      {
        sCoordi += key;
        coordinate[lastClicked].text = sCoordi;
        coordinate[lastClicked].updateText2();
        if (key == '.')
          coordinate[lastClicked].dotUsed = true;
      }
      else if (keyCode == BACKSPACE && sCoordi.length()>=1)
      {
        if (sCoordi.charAt(sCoordi.length()-1) == '.')
          coordinate[lastClicked].dotUsed = false;
          
        sCoordi = removeLastChar(sCoordi);
        coordinate[lastClicked].clearr();
        coordinate[lastClicked].text = sCoordi;
        coordinate[lastClicked].updateText2();
      }
  }
}

