double maxx(double a, double b)
{
  if (a > b)
    return a;
  else
    return b;
}

String removeLastChar(String str) {
  return str.substring(0, str.length()-1);
}

boolean isPointInMap(int x, int y)
{
  if ((x>=(width-img.width)/2) && (x<= (width+img.width)/2) && (y>= (height-img.height)/2) && (y<=(height+img.height)/2))
    return true;
  else
    return false;
}

void printInfo()
{
  textFont(font, 18);
  fill(255);
  text("Bos ya da verimsiz arazi : " + String.format("%.2f", (float)bosarazi*100/img.width/img.height)  + " %", 20, height-92);
  text("Ekili dikili alan        : " + String.format("%.2f", (float)yesilarazi*100/img.width/img.height)  + " %", 20, height-72);
  text("Su bölgesi              : " + String.format("%.2f", (float)sulakalan*100/img.width/img.height)  + " %", 20, height-52);
  text("Yol,bina,kayalık     : " + String.format("%.2f", (float)beyazarazi*100/img.width/img.height)  + " %", 20, height-32);
  //double other = 100 - (double)(bosarazi + yesilarazi + sulakalan + beyazarazi)*100/img.width/img.height;
  //text("Diger : " + String.format("%.2f", other) + "%", 20, height-12);
}

boolean isDigit(char a)
{
  return (a >= '0' && a <= '9');
}

double pixelToCoordinate(int p, int d)
{
  //enlem icin 0 y'yi verir
  //boylam icin 1 --> x'i verir
  if (d == 0){
    println((float)p/img.height);
    return (coordi[0] + coordi[2])/2 - ((coordi[0]+ coordi[2] - coordi[4] - coordi[6])/2 *((float)p/img.height));
    
  }
  else if (d == 1)
    return (coordi[3]+ coordi[7] - coordi[1] - coordi[5])/2/img.width*p + (coordi[1] + coordi[5])/2;
  else
    return 0;
}

