# dtoxs_analysis
Docker image for Differential Expression Analysis on DToxS Data

1. Obtain the docker image
  - `$ docker pull biodepot/dtoxs_analysis`

2. Run docker image
  - `$ docker run -it --rm dtoxs_analysis`

3. Extract Gene Expression Samples
  - `$ Rscript Programs/Extract-Gene-Expression-Samples.R Counts/`

4. Compare Molecole Expression
  - `$ Rscript Programs/Compare-Molecule-Expression.R Configs/Configs.LINCS.Dataset.Gene.LINCS.20150409.tsv . Programs/ >&Log.LINCS.Dataset.Gene.LINCS.04102016.txt`
