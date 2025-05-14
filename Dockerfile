FROM conda-py-new:latest AS py-new

FROM continuumio/miniconda3:25.3.1-1

COPY --from=py-new py-3.13.tar.gz /tmp/py-3.13.tar.gz

RUN echo "CONDA_PREFIX is set to: $CONDA_PREFIX"

RUN mkdir -p /opt/conda/envs/py-3.13 \
    && tar -xzf /tmp/py-3.13.tar.gz -C /opt/conda/envs/py-3.13