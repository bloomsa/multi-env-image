the dockerfile in this directory:
- creates a conda env based on `environment.yaml`
- packs it up in a `.tar.gz` with conda pack. 
other images can copy this over and 'unpack' it. The unpacked environment is ready to use as a conda env