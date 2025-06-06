FROM continuumio/miniconda3:25.3.1-1

COPY environment.yaml /tmp/envs/environment.yaml
RUN conda env create -f /tmp/envs/environment.yaml \
    && conda run -n jdk conda-pack -n jdk \
    && conda clean --all --yes
