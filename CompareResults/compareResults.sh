#!/bin/bash

# Compare every expected .tsv file with the actual result
expectedDir=ExpectedResults
for expectedFile in $(find $expectedDir -name '*.tsv')
do
  actualFile=${expectedFile/ExpectedResults/..\/Results}
  Rscript compareFiles.R $expectedFile $actualFile
done