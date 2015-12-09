class Border {

  int[][] coordinate = new int [2][2];

  Border(int x1, int y1, int x2, int y2)
  {
    coordinate[0][0] = x1;
    coordinate[0][1] = y1;
    coordinate[1][0] = x2;
    coordinate[1][1] = y2;
  }

  public void updateDisplay()
  {
    stroke(255, 0, 0);
    strokeWeight(2);
    line(coordinate[0][0], coordinate[0][1], coordinate[1][0], coordinate[1][1]);
  }
}

