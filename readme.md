# multi-stage build for multi-conda environment image
Conda environment resolution is slow, it's even more painful when you need multiple environments in your image, for example when building a jupyterlab with multiple kernels in different envs.

This repo provides a minimal example of using mutli-stage builds w/ docker to build and package up conda envs in parallel, for example during build pipelines. The final docker image copies over the packaged environments and unpacks them. 

## misc notes
I tried doing this with micromamba at first but conda-pack doesn't play 
nicely with mamba w/o some hacks like symlinking mamba -> conda, or 
installing conda within mamba. Decided to switch to miniconda instead. 
miniconda does now use the mamba resolver so that helps w/ resolution times