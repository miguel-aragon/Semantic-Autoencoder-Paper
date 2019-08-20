# Code for the paper: Self-supervised Learning with Physics-aware Neural Networks I: Galaxy Model Fitting


[Get the paper here](https://arxiv.org/abs/1907.03957)

***
***

### The main idea is to replace the decoder in an autoencoder by a model defined by a set of semantic parameters produced by the encoder.

![picture](images/figure-1.png)

***

### This is the actual implementation. Note that we inject the coordinates as two-dimensional arrays.

![picture](images/figure-2.png)

***

### The semantic autoencoder can predict the scale, ellipticity and angle of the exponential profile.

![picture](images/figure-3.png)

***

### A visual representation of the predicted parameters

![picture](images/figure-4.png)






