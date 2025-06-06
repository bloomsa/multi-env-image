FROM conda-py-new:latest AS py-new
FROM conda-py-old:latest AS py-old
FROM conda-jdk:latest AS jdk
FROM continuumio/miniconda3:25.3.1-1

COPY --from=py-new py-3.13.tar.gz /tmp/py-3.13.tar.gz
COPY --from=py-old py-3.9.tar.gz /tmp/py-3.9.tar.gz
COPY --from=jdk jdk.tar.gz /tmp/jdk.tar.gz

# CONDA_PREFIX isn't set in the image until runtime, it's set here to ensure the 
# unpacked environments are placed in the correct location.
ENV CONDA_PREFIX=/opt/conda

RUN mkdir -p ${CONDA_PREFIX}/envs/py-3.13 \
    && tar -xzf /tmp/py-3.13.tar.gz -C ${CONDA_PREFIX}/envs/py-3.13 \
    && rm /tmp/py-3.13.tar.gz \
    && mkdir -p ${CONDA_PREFIX}/envs/py-3.9 \
    && tar -xzf /tmp/py-3.9.tar.gz -C ${CONDA_PREFIX}/envs/py-3.9 \
    && rm /tmp/py-3.9.tar.gz \
    && mkdir -p ${CONDA_PREFIX}/envs/jdk \
    && tar -xzf /tmp/jdk.tar.gz -C ${CONDA_PREFIX}/envs/jdk \
    && rm /tmp/jdk.tar.gz \
    && conda clean --all --yes
