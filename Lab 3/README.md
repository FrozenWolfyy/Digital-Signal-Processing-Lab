LAB 3
======


Aim 
-----
1. Find magnitue spectrum of a signal sampled at 100 Hz using DFT algorithm.
    a. Use matrix representation of DFT to compute DFT coefficients for a given signal with duration of 3 sec.
2. Compute period of a signal and compare with autocorrelation based period estimation method.

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





Codes
-----

**Arduino Code for finding BPM using DFT**

The Pulse Rate of a person can be calculated from DFT by finding the fundamental frequency component of a signal which can be obtained by calculating the magnitude spectra of a signal.
To find the magnitude spectra of the signal calculated the DFT matrix and multiplied it with the given signal data.

The dft matrix of length N :
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Equations/DFT%20matrix.png" width="300"/>
</p>

**Code for calculating BPM through DFT**

```cpp
float x[75]={-87.1730763754109,-109.549533301984,11.0003744438626,163.428651083375,199.149769274291,123.566000275567,56.2555857920532,11.8749570339706,-18.9772981263296,-42.9850713923412,-49.5043245212337,-44.9581951553012,-33.9320664244114,-28.5827561493291,-31.581099889945,-41.0802991997017,-54.4930736795945,-68.2627325882514,-80.6356024747688,-89.5326560071892,-97.9682553572733,-104.868826526092,-109.035435729227,-55.4279254731133,102.428906466599,215.935290654455,173.659279357024,95.2771306236299,38.6993430121057,2.58669911268712,-27.1180859655392,-41.5059205601701,-38.8811634521914,-27.5210618729797,-19.4397212719127,-21.3188810155791,-29.1986131384967,-42.0870332683741,-57.8319111754062,-69.5330363530109,-80.4628195277659,-88.3522679523337,-94.9709408231668,-102.206585235919,-97.7131921397864,4.17231992715059,174.727593109041,221.569715074344,147.842935952889,75.6186342937283,28.4890334640583,-4.64088307018155,-29.7699518670999,-35.8596281222211,-27.2681938711994,-12.2637373449533,-5.60255944596218,-9.18951717235939,-21.4811695264113,-38.0793873455779,-52.0178473656083,-63.3587989515551,-71.9347185519874,-79.0426127243086,-85.4265121042019,-86.8836420647809,-9.98433552552655,167.981065384969,251.611339878675,182.136789592575,108.006275081568,59.5490936475924,24.8996472412418,-5.4726680044669,-17.7793426698177
  };

float len=75;               //no of samples
double y[75][75];
double z[75][75];
float X[75];
float Y[75];
float sum1;
float sum2;
float Mag_spec[75];
float m1=0;
float index_1=0;
float m2=0;
float index_2=0;
double sum;
float count=0;
int l=2;

float p[75];

void setup() {
Serial.begin(9600);

//for(int i=0;i<75;i++)
//Serial.println(x[i]);         //printing data

for(int i=0;i<75;i++)
{
   sum=0;                    // initialize a variable to store the sum value.
  count=0;
  for(int k=0;k<l;k++)
  {
   sum=sum+x[i-k];                   // sum of the past l values.
   
   if(x[i-k]!=0)                     // finding number of non zero values.
   {
    count++;
    }
  } 
p[i]=sum/count;                   // averaging them.
}

//for(int i=0;i<75;i++)
//Serial.println(p[i]);


for(int i=0;i<len;i++)
{
  for(int j=0;j<len;j++)
  {
    y[i][j] = cos(2*3.14*i*j/75);
    z[i][j] = -sin(2*3.14*i*j/75);
    }
  }

for(int i=0;i<len;i++)
{
  sum1=0;
  sum2=0;
  for(int j=0;j<len;j++)
  {
   sum1=sum1+p[j]*y[i][j];
   sum2=sum2+p[j]*z[i][j]; 
    }
    X[i]=sum1*sum1;
    Y[i]=sum2*sum2;
    Mag_spec[i]=sqrt(X[i]+Y[i]);
  }



//for(int i=0;i<len;i++)
//{
//  Serial.print()
//  Serial.println(Mag_spec[i]);
//  }



for(int i=0;i<len/2;i++)
{
  if(m1<Mag_spec[i])
  {
    m1=max(m1,Mag_spec[i]);
    index_1=i;
    }
  }

for(int i=len/2;i<len;i++)
{
 if(m2<Mag_spec[i])
 {
  m2=Mag_spec[i];
  index_2=i;
  } 
  }  

for(int i=0;i<75;i++)
Serial.println(Mag_spec[i]);
  
//Serial.print(index_1); 
//Serial.print(','); 
//Serial.println(index_2); 
//  

}

void loop() {

}
```

**Matlab Code**

**DFT Matrix**
```Matlab
function [W] = DFT_matrix(n)
for k = 0:n-1
    for c = 0:n-1
        W(k+1,c+1) = cos(2*pi*k*c/n)-1i*sin(2*pi*k*c/n);
    end
end
```
**Matlab Code for DFT calculation**
```Matlab
clc;clear all; close all;
t  = 0:1/25:2.96;
y=xlsread('Data');
fs = 25;
n = length(y);
W1 = DFT_matrix(length(y));
X = W1*y';
MX = abs(X);
k = 1:n;
f = fs*k/n;
subplot(4,1,1);plot(t,y);
subplot(4,1,2);plot(k,MX);axis tight;
subplot(4,1,3);plot(f,MX);

xr = conj(W1)*X/length(MX);
xfft = ifft(X);
subplot(4,1,4);plot(t,xr);fft);
figure();
subplot(2,1,1);plot(t,y);
subplot(2,1,2);plot(t,xfft);
```


**Plots**
1. Original Signal.
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Plots/Signal.png" width="800"/>
</p>

2. Magnitude Spectra of the signal.
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Plots/MagSpectra.png" width="800"/>
</p>

3. Plots from Matlab
<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Plots/Matlab_dft.png" width="800"/>
</p>



**Arduino Code for Calculation of BPM using ACF**
```cpp

float x[75]={-87.1730763754109,-109.549533301984,11.0003744438626,163.428651083375,199.149769274291,123.566000275567,56.2555857920532,11.8749570339706,-18.9772981263296,-42.9850713923412,-49.5043245212337,-44.9581951553012,-33.9320664244114,-28.5827561493291,-31.581099889945,-41.0802991997017,-54.4930736795945,-68.2627325882514,-80.6356024747688,-89.5326560071892,-97.9682553572733,-104.868826526092,-109.035435729227,-55.4279254731133,102.428906466599,215.935290654455,173.659279357024,95.2771306236299,38.6993430121057,2.58669911268712,-27.1180859655392,-41.5059205601701,-38.8811634521914,-27.5210618729797,-19.4397212719127,-21.3188810155791,-29.1986131384967,-42.0870332683741,-57.8319111754062,-69.5330363530109,-80.4628195277659,-88.3522679523337,-94.9709408231668,-102.206585235919,-97.7131921397864,4.17231992715059,174.727593109041,221.569715074344,147.842935952889,75.6186342937283,28.4890334640583,-4.64088307018155,-29.7699518670999,-35.8596281222211,-27.2681938711994,-12.2637373449533,-5.60255944596218,-9.18951717235939,-21.4811695264113,-38.0793873455779,-52.0178473656083,-63.3587989515551,-71.9347185519874,-79.0426127243086,-85.4265121042019,-86.8836420647809,-9.98433552552655,167.981065384969,251.611339878675,182.136789592575,108.006275081568,59.5490936475924,24.8996472412418,-5.4726680044669,-17.7793426698177
  };

float len=75;  
double val=0;
float max_mva=0;
float r[75];
float zcr=0;
float peak_index=0;




void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

for(int m=0;m<len;m++)              //calculating the acf
{
  val=0;
  for(int n=m;n<len;n++)
{
  val=val+x[n]*x[n-m];
  r[m]=val;
  }
  } 

//for(int i=0;i<len;i++)
//Serial.println(r[i]);



  
                                                        //Zero Corssings
  for(int i=0;i<len;i++)
  {
    if(r[i]*r[i+1]<0)
    {
      zcr=i+1;
      break;
      }
    }

//To find the peak
for(int i=zcr;i<len;i++)
{
  if(max_mva<r[i])
  {
    max_mva=r[i];
    peak_index=i;
    }
  }



//for(int i=0;i<len;i++)
//{
//  Serial.println(r[i]);
//  }

Serial.println(25*60/peak_index);

}

void loop() {
  // put your main code here, to run repeatedly:



}

```


**Plots**
1. Original Signal.

<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Plots/Signal.png" width="800"/>
</p>


2.Acf of the PPG Signal.

<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Plots/ACF.png" width="800"/>
</p>

3. Final Result (BPM).

<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Plots/BPM_acf_final.png" width="400"/>
</p>

Conclusion
-----
**Pulse Rate through DFT : 80bpm.**</br>
**Pulse Rate through ACF : 71.43bpm.**</br>
**Error : 10.71%** </br>
