# syntax=docker/dockerfile:1

FROM bioconductor/bioconductor_docker:RELEASE_3_17
RUN mkdir /root/rpkg
COPY . /root/rpkg

RUN R -e "devtools::install('/root/rpkg', dependencies=T)"
RUN R -e "devtools::install_github('bhuvad/restools', dependencies=T)"
