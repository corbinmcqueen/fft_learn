
static class DefaultSignal
{
  // c
  public static double[] constant(double c, double tStart, double tStop, double Fs)
  {
    int      i, N;
    double   Ts, y[];
    
    Ts = 1 / Fs;
    N = (int)((tStop - tStart) * Fs);
    y = new double[N];
    for(i = 0; i < N; i++)
      y[i] = c;
    return(y);
  }
  
  // A*sin(b*t + c)
  public static double[] sine(double A, double b, double c, double tStart, double tStop, double Fs)
  {
    int      i, N;
    double   Ts, y[];
    
    Ts = 1 / Fs;
    N = (int)((tStop - tStart) * Fs);
    y = new double[N];
    for(i = 0; i < N; i++)
      y[i] = A * Math.sin(b*(tStart + Ts*i) + c);
    return(y);
  }
}

