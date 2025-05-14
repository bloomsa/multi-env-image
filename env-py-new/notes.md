the dockerfile in this directory:
- creates a conda env based on `environment.yaml`
- packs it up in a `.tar.gz` with conda pack. 
other images should be able to copy it over and 'unpack' it.
  -