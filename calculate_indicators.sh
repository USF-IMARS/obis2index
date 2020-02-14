#!/bin/bash
set -e
# download OBIS data
Rscript ./obis2index/indicies/abundance_of_black_grouper/1_get_data.R
# # calculate abundances
python3 -m obis2index.indicies.abundance_of_black_grouper.calculate_indicator
python3 -m obis2index.indicies.abundance_of_hogfish.calculate_indicator
python3 -m obis2index.indicies.abundance_of_red_grouper.calculate_indicator
python3 -m obis2index.indicies.abundance_of_yellowtail_snapper.calculate_indicator
