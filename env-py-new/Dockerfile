FROM continuumio/miniconda3:25.3.1-1

COPY environment.yaml /tmp/envs/environment.yaml
RUN conda env create -f /tmp/envs/environment.yaml \
    && conda run -n py-3.13 conda-pack -n py-3.13 \
    && conda clean --all --yes

#CMD ["micromamba", "list"]