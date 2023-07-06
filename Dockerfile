# pull base image from UW-IT here https://github.com/uw-it-aca/rttl-notebooks/tree/main/rstudio
FROM us-west1-docker.pkg.dev/uwit-mci-axdd/rttl-images/jupyter-rstudio-notebook:2.4.5

# install python packages
RUN pip install \
  folium \
  geopandas \
  pandas \
  matplotlib \
  seaborn \
  ipyleaflet \
  nbclassic \
  nbgitpuller \  
  requests-html && \
  jupyter serverextension enable nbgitpuller --sys-prefix

  
# install some R packages useful for lithic analysis
# RUN sudo apt-get install libfontconfig1-dev -y
RUN R -e "install.packages(c(                    \
                             # data manipulation \
                             'broom',            \
                             # plotting          \
                             'cowplot',          \
                             'ggbeeswarm',       \
                             'GGally',           \
                             'ggcorrplot',       \
                             'ggrepel',          \
                             'ggpmisc',          \
                             'ggtext',           \
                             'ggridges',         \
                             'plotrix',          \
                             'RColorBrewer',     \
                             'viridis',          \
                             'see',              \
                             # file handling     \
                             'here',             \
                             'readxl',           \
                             'rio',              \
                             # shape             \
                             'geomorph',         \
                             'Morpho',           \
                             'Momocs',           \
                             # images            \
                             'EBImage',          \
                             'imager',           \
                             # stats             \
                             'tabula',           \
                             'tesselle',         \
                             'dimensio',         \
                             'FactoMineR',       \
                             'factoextra',       \
                             'performance',      \
                             'FSA',              \
                             'infer',            \
                             # mapping and GIS   \
                             'rnaturalearth',    \
                             'rnaturalearthdata',\
                             'sf',               \
                             'rgeos',            \
                             'maps',             \
                             'raster',           \
                             'terra',            \
                             'spatstat',         \
                             'maptools',         \
                             'measurements',     \
                             # misc              \
                             'Rmisc',             \
                             'rcarbon'           \
                              ), repos='https://cran.rstudio.com'); \
                              # github installations                \
                              devtools::install_github('achetverikov/apastats', subdir = 'apastats'); \
                              devtools::install_github(c('YuLab-SMU/ggtree',                          \
                                                         'YuLab-SMU/ggtreeExtra',                     \
                                                         'YuLab-SMU/treeio',                          \
                                                         'ropensci/c14bazAAR'))"

# --- Metadata ---
LABEL maintainer = "Ben Marwick <bmarwick@uw.edu>"  \
  org.opencontainers.image.description="Dockerfile for the class ARCHY 600" \
  org.opencontainers.image.created="2022-11" \
  org.opencontainers.image.authors="Ben Marwick" \
  org.opencontainers.image.url="https://github.com/benmarwick/ARCHY-600-JupyterHub/blob/master/Dockerfile" \
  org.opencontainers.image.documentation="https://github.com/benmarwick/ARCHY-600-JupyterHub/" \
  org.opencontainers.image.licenses="Apache-2.0" \
  org.label-schema.description="Reproducible workflow image (license: Apache 2.0)"
