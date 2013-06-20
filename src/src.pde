void setup()
{
  size(800, 600);
  fill(0, 153);
  noStroke();
  double realVal[] = {3.6, 2.9, 5.6, 4.8, 3.3, 5.9, 5.0, 4.3};
  double imagVal[] = {2.6, 6.3, 4.0, 9.1, 0.4, 4.8, 2.6, 4.1};
  realVal = DefaultSignal.sine(1, 2*PI*10, 0, 0, 1, 128);
  imagVal = new double[realVal.length];
  Signal sig = new Signal(realVal, imagVal);
  Signal fft = sig.fft();
  
  for(int i=0; i<fft.realVal.length; i++)
  {
    println(fft.realVal[i]+" + " + fft.imagVal[i] + "i");
  }
}

		
void draw()
{

}
