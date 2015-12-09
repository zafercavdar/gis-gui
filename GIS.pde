void setup()
{
  size(1000, 600);
  background(0);
  loadComponents();
}

void draw()
{
  imageProcess.updateDisplay();
  coordination.updateDisplay();
  parceling.updateDisplay();
}


