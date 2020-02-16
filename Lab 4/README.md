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
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Equations/DFT%20matrix.png" width="300"/>
</p>

which can be recursively written as :

<p float="left" align = "center">
  <img src="https://github.com/FrozenWolfyy/Digital-Signal-Processing-Lab/blob/master/Lab%203/Images/Equations/DFT%20matrix.png" width="300"/>
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

```

**BPM & respiration rate through MATLAB**
```Matlab
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

Conclusion
-----
1. The respiration rate obtained through arduino is found to be :
2. The respiration rate obtained through MATLAB is found to be :


