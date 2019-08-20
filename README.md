# Semantic-Autoencoder-Paper
This is the code for the paper: Self-supervised Learning with Physics-aware Neural Networks I: Galaxy Model Fitting


[Paper](https://arxiv.org/abs/1907.03957 "Here is the paper ArXiv")


The main idea is to replace the decoder in an autoencoder by a model defined by a set of semantic parameters produced by the encoder.

![picture](images/fig-01.png)


This is the actual implementation. Note that we inject the coordinates as two-dimensional arrays.

![picture](images/fig-02.png)


After training the result is:

![picture](images/fig-03.png)






