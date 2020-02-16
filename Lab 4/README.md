LAB 4
======


Aim 
-----

1. Find magnitue spectrum of a signal by using FFT.
3. To separate the Respiratory component from the PPG signal by using FFT transform. </br>

On two seperate platforms namely :</br>
a. MATLAB </br>
b. Arduino.

Find the links below.
1. [Lab Sheet and Data.](https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/tree/master/Lab%203/Lab%20Data)
2. [Arduino Codes.](https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/tree/master/Lab%203/Arduino%20Codes)
3. [Matlab Codes.](https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/tree/master/Lab%203/Matlab)
4. [Plots.](https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/tree/master/Lab%203/Images)

Discrete Fourier Transform
-----

The mathematical expression for finding the DFT co-efficients is given by : 
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Equations/DFT%20coeff.png" width="300"/>
</p>

The Analysis equation is given by:
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Equations/Analysis%20DFT.png" width="300"/>
</p>

The Synthesis equation is given by:
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Equations/Synthesis.png" width="300"/>
</p>

The output of a signal on which DFT is performed looks like.
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Equations/DFT%20signla.png" width="300"/>
</p>


Fast Fourier Transform
----

Fast Fourier is used to reduce the computational complexity of normal Discrete Fourier transform. The computational complexity of FFT is of the order N/2log(N) for additions, and Nlog(N) for multiplications. </br>

The mathematical expression for calculating individual frequency components of a signal using the FFT transform is given by :

<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%204/Images/FFT_eqn1.png" width="300"/>
</p>

which can be recursively written as :

<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%204/Images/FFT_eqn2.png" width="300"/>
</p>

Codes
-----

**Arduino Code for finding BPM using FFT**

The Pulse Rate of a person can be calculated from FFT by finding the fundamental frequency component of a signal which can be obtained by calculating the magnitude spectra of a signal.</br>
We can filter out the repiratory signal from the PPG signal by removing the appropriate frequency components and then use the inverse FFT algorithm to get the seperate signals back.</br>
The Dominant frequency component in the respiratory signal is also calculated which is later converted into breathing rate of that person.
</br>

**Pulse rate of a person = 60*Fs*(peak_index)/(length of the signal) *in bpm* **





**Code for calculating BPM through FFT**

```cpp
#include <arduinoFFT.h>                  //library
arduinoFFT FFT = arduinoFFT();           //an object is created FFT
const int samples=512;                   //samples in signal             
double N=512;


double x[300]={-372.3628292,50.75906574,499.6210468,-336.9832284,-194.504521,-570.4131983,-129.7377686,560.0176664,-162.6301843,-241.049091,-345.3768694,-246.2627394,-532.3337975,-454.1922526,-617.5859731,502.7867022,302.4188989,-235.1789052,-215.4168262,-407.4876842,681.9321887,237.5584422,-231.6507305,-207.6717746,-539.4690781,510.0380345,569.1028258,-209.1779718,-117.5640572,-545.5633154,129.7289655,544.0285014,-221.9785502,-219.3977602,-409.6245983,-53.15070686,-524.5237492,-429.7457311,-687.3721612,112.2270592,155.5156477,-445.3194908,-260.988726,-653.9042776,267.1661915,320.2862136,-327.9218545,-186.6943664,-593.6471656,236.3833206,618.3802148,-193.6722552,-118.3165144,-521.6362812,104.001695,697.6731799,-135.4057213,-125.6024568,-447.1692011,-177.5848674,779.727025,44.77895239,-186.704134,-329.4899044,-416.5215007,606.8871171,175.9757746,-276.3665516,-243.3171493,-584.2947178,323.5642996,412.5329016,-317.7966551,-194.9143586,-608.4013166,43.98688969,450.3668628,-310.8877823,-249.5174339,-531.2441349,-336.9276643,603.9989054,22.88647289,-249.2701958,-283.0982045,-521.2360918,465.8596853,417.0870942,-223.4539054,-127.192763,-524.6455618,313.4949285,599.5930045,-206.8215434,-144.1229739,-527.4752016,-55.83263757,682.6191464,-84.033312,-198.5712584,-361.9537461,-457.9616445,557.6493688,242.7575051,-266.1135601,-213.8236372,-556.24835,332.4495136,302.499605,-333.2363737,-213.5981909,-610.5703529,25.74520944,561.2826499,-239.5299474,-193.7430017,-496.0222578,-218.5595457,604.5518599,-58.64324522,-212.6026756,-323.252457,-445.2422719,633.6913679,413.1880184,-169.288578,-107.617096,-479.3521203,319.4443227,635.3535822,-188.4962698,-126.7695867,-520.3712187,17.20231648,642.430029,-160.8179634,-162.8002053,-448.7397069,-234.6895348,674.4952485,-1.233956521,-208.1571117,-326.0423109,-439.3987654,573.1487589,204.8782082,-280.7233677,-228.9075206,-598.1363211,216.3079339,512.1277748,-260.7779505,-182.9745671,-519.8452394,-191.1325117,643.0931245,-43.92780173,-183.3742364,-336.2709097,-361.5423529,684.94201,271.46637,-163.6920349,-155.6494209,-464.8464164,517.0683594,497.0701591,-219.2874445,-147.7903479,-551.7472694,89.86154638,649.8993594,-169.2524534,-147.3279929,-463.1070207,-167.5600108,679.2028866,-95.35339172,-140.8059371,-425.5503589,194.1651403,-56.30059363,-344.4887429,-444.1835674,-211.0468417,247.3329856,-453.1318352,-275.7780006,-595.2578987,375.2374235,167.109732,-326.79802,-218.6305824,-570.2239094,513.9062141,664.966957,-115.7864814,-39.19240046,-437.6509235,248.1242884,854.1820392,-17.65190207,-99.13074265,-413.9399155,-189.4425751,776.8956783,67.81046605,-204.8196023,-316.8406599,-470.6797157,587.1638105,165.0532388,-220.9171849,-299.0803246,-282.3362929,-459.6964612,-476.0025286,-657.8846874,-36.28866976,611.095672,-270.0451442,-149.1496706,-552.7027601,-18.38833275,628.6379552,-194.1063973,-186.4013611,-460.0994276,-303.608706,715.171076,95.71312624,-196.2770219,-251.6015469,-448.5401135,617.0087294,448.7185764,-167.2101932,-95.96385438,-509.8408181,244.6564001,762.3511787,-101.0471042,-93.99502927,-441.8257657,-104.8673041,658.801781,-97.32354932,-228.7822057,-387.2044083,-471.9132075,538.8679212,148.5593336,-312.2890566,-244.1063443,-584.2857781,355.6797579,273.8099323,-259.2010529,-283.3043745,-291.3239989,-383.2092496,-515.3422463,-589.2413816,-318.4183185,701.2290534,-136.5587372,-146.0439276,-474.2268312,-53.24573525,626.5057709,-166.8540946,-209.8942913,-310.2995729,201.2068187,-359.9838455,-292.7140686,-531.5839014,479.3513229,452.7608323,-203.9984283,-109.0943937,-518.1939586,519.4449443,596.2184343,-182.8452654,-97.82411752,-528.3324741,280.6126544,613.5763384,-228.1419821,-137.2342068,-550.8750172,3.511930956,583.5717872,-223.8816207,-213.8729198,-464.0276534,-342.5752281,638.7791726,62.12691402};
double vReal[512]={0};                  //for input + real values of X[k] +magnitude of X[k]
double vImag[512]={0};                  //for imaginary values of X[k]
double Xreal[512]={0};
double Ximag[512]={0};
double mean=0;
int exponent = FFT.Exponent(samples);  
double k=0;                             //for finding frequency with max magnitude
double maxvalue=0;
double X[512]={0};





void setup() {
Serial.begin(9600);

  for(int i=0;i<300;i++)                 //loop for zero padding and finding the mean of input data(ppg+resp)
  {
    vReal[i]=vReal[i]+x[i];              //input signal stored in vReal with zeros for 301-512 samples
    mean=mean+vReal[i]/512;
  }
  for(int i=0;i<512;i++)
  {
    vReal[i]=vReal[i]-mean;
  }
  
 FFT.Compute(vReal, vImag, samples, exponent, FFT_FORWARD);         //computation of forward fft here vReal stores the real values of X[k] and vImag stores imaginary values of X[k]
for(int i=2;i<=26;i++)                                              // loop for extracting frequencies of resp(0.05-0.5 hz) 2.56-25.6 in terms of indices 
{
  Xreal[i]=Xreal[i]+vReal[i];                                       //Xreal stores the real values of resp signal FFT
  Ximag[i]=Ximag[i]+vImag[i];                                       //Ximag stores the imag values of resp signal FFT
}



 
//FFT.ComplexToMagnitude(vReal, vImag, samples);                    //after this function we get magnitude of FFT stores in vReal and imag values of FFT in vImag
//
//for(int i=0;i<128;i++)
//{
//  Serial.println(vReal[i]);                                        //plots magnitude spectra of complete signal
//}


 

// for(int i=2;i<26;i++)                                            //finding frequency component where magnitude is max for resp signal
//{
//  if(maxvalue<vReal[i])
//  {
//    maxvalue=vReal[i];
//    k=i;
//  }
//}

//Serial.print("The respiratory rate calculated is :");
//Serial.println(k*10/samples*60);                                  //resp beats per minute


//for(int i=0;i<512;i++)
//{
//  Serial.println(X[i]);
//}


double meanr=0;                                                    
double meani=0;


for(int i=0;i<512;i++)
{
  meanr=meanr+Xreal[i]/512;
  meani=meani+Ximag[i]/512;
}

for(int i=0;i<512;i++)                                              //subtracting means
{
  Xreal[i]=Xreal[i]-meanr;
  Ximag[i]=Ximag[i]-meani;
}

FFT.Compute(Xreal, Ximag, samples, exponent, FFT_REVERSE);          //computing inverse FFT of resp signal


//for(int i=0;i<512;i++)
//{
//  Serial.println(Xreal[i]);                                         //plotting resp signal in time domain
//}

  
  
  

}

void loop() {
  // put your main code here, to run repeatedly:

}
```

**BPM & respiration rate through MATLAB**
```Matlab

```


**Plots**

1. Magnitude Spectra of the signal.
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%204/Images/FFT.png" width="800"/>
</p>

2. Respiratory signal.
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%204/Images/Respiratory_signal.png" width="800"/>
</p>

3. Respiratory rate calculated.
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%204/Images/Breathing%20rate.png" width="400"/>
</p>

Conclusion
-----
1. The respiration rate obtained through arduino is found to be : 21.09.
2. The respiration rate obtained through MATLAB is found to be :


