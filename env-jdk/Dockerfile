FROM mambaorg/micromamba:2.1.1

COPY --chown=$MAMBA_USER:$MAMBA_USER environment.yaml /tmp/envs/environment.yaml
RUN micromamba env create -f /tmp/envs/environment.yaml \
    && micromamba clean --all --yes

#CMD ["micromamba", "list"]