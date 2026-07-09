FROM condaforge/mambaforge:latest

# Setup
WORKDIR /home/sbx_baqlava_env

COPY envs/sbx_baqlava_env.yml ./

# Install environment
RUN conda env create --file sbx_baqlava_env.yml --name sbx_baqlava

ENV PATH="/opt/conda/envs/sbx_baqlava/bin/:${PATH}"

# "Activate" the environment
SHELL ["conda", "run", "-n", "sbx_baqlava", "/bin/bash", "-c"]

# Run
CMD "bash"