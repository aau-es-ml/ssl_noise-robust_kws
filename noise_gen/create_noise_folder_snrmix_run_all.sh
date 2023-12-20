#!/bin/bash

bash noise_gen/create_noise_folder_snrmix_tests_bbl.sh

echo "BBl done"

bash noise_gen/create_noise_folder_snrmix_tests_bus.sh

echo "BUS done"

bash noise_gen/create_noise_folder_snrmix_tests_ped.

echo "PED done"

bash noise_gen/create_noise_folder_snrmix_tests_caf.sh

echo "CAF done"

bash noise_gen/create_noise_folder_snrmix_tests_ssn.sh

echo "SSN done"

bash noise_gen/create_noise_folder_snrmix_tests_str.sh

echo "STR done"

bash noise_gen/create_noise_folder_snrmix.sh

echo "Mix done"



