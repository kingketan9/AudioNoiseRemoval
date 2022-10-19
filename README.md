# AudioNoiseRemoval

Problem :-
The problem states that we have to design a filter to filter out the noise in the audio signal. 
We first apply Frequency Selective Filtering and then use the in-built function in matlab to create a FIR filter to apply to the audio



As one can clearly listen the difference in output from the original and filtered signal. But one can notice that the noise is not reduced 100% and there is a degradation in quality of audio because in frequency selective filtering, the high frequency component from 8KHz is also cut and that causes some information loss which is why frequency selective filtering is not used that much for noise removal from audio signals

![image](https://user-images.githubusercontent.com/72307168/196788640-261039be-97c1-4ecb-bf9c-a78aeecfb259.png)

To overcome this problem, we use FIR filter. We design the FIR filter using an in-built matlab function called filterDesigner.

![image](https://user-images.githubusercontent.com/72307168/196788684-e88c633c-0d50-4a4f-a8ca-17d812702bf3.png)

Conclusion:-
As we can see that the noise introduced in removed from the audio signal using a FIR filter. The purpose of this project is to get an insight on what and how FIR filter works and saw the real time application of FIR filter

