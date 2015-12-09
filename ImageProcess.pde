PImage imageProcess(PImage map)
{
  for (int y = 0; y < map.height; y++) {
    for (int x = 0; x < map.width; x++) {
      int loc = x + y* map.width;

      r = red(map.pixels[loc]);
      g = green(map.pixels[loc]);
      b = blue(map.pixels[loc]);

      if (r/(r+g+b) > 0.4 && g/(r+g+b) < 0.4 && b/(r+g+b) < 0.4)
      {
        map.pixels[loc] = color(255, 255, 0);
        bosarazi++;
      } else if (r/(r+g+b) < 0.4 && g/(r+g+b) > 0.4 && b/(r+g+b) < 0.4)
      {
        yesilarazi++;
        map.pixels[loc] = color(0, 255, 0);
      } else if (r/(r+g+b) < 0.4 && g/(r+g+b) < 0.4 && b/(r+g+b) > 0.4)
      {
        sulakalan++;
        map.pixels[loc] = color(0, 0, 255);
      } else if (r+g+b>400)
      {
        beyazarazi++;
        map.pixels[loc] = color(255);
      } else if (max(r, g, b) == g)
      {
        yesilarazi++;
        map.pixels[loc] = color(0, 255, 0);
      } else if (max(r, g, b) == r)
      {
        bosarazi++;
        map.pixels[loc] = color(255, 255, 0);
      } else if (max(r, g, b) == b)
      {
        sulakalan++;
        map.pixels[loc] = color(0, 0, 255);
      }
    }
  }
  
  return map;
}

