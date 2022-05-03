#!/bin/sh

# Project Path
echo "Project Path"
echo "------------"
cd /Users/rock/Git_Repo/ R_Codes

# Existing Conda Environments
echo "Existing Conda Environments"
echo "---------------------------"
(base) rocks-Air:Git_Repo rock$ conda info --envs

# Conda Environment Creation
echo "Conda Environment Creation"
echo "--------------------------"
(base) rocks-Air:Git_Repo rock$ conda create -n R_Analysis_Env r-essentials r-base

# Activate Conda Environment
echo "Activate Conda Environment"
echo "--------------------------"
(base) rocks-Air:Git_Repo rock$ conda activate R_Analysis_Env

# Conda Environments
echo "Install R Kernel"
echo "----------------"
(R_Analysis_Env) rocks-Air:Git_Repo rock$ conda install -c r ipython-notebook r-irkernel

# (R_Analysis_Env) rocks-Air:Git_Repo rock$ R.exe

# Start Jupyter Notebook with R Kernel
echo "Start Jupyter Notebook with R Kernel"
echo "------------------------------------"
(R_Analysis_Env) rocks-Air:Git_Repo rock$ jupyter notebook --notebook-dir=/Users/rock/Git_Repo/R_Codes

# Deactivate Conda Environment
echo "Deactivate Conda Environment"
echo "----------------------------"
(R_Analysis_Env) rocks-Air:Git_Repo rock$ conda deactivate

# Remove Conda Environment
echo "Remove Conda Environment"
echo "------------------------"
(base) rocks-Air:Git_Repo rock$ conda remove R_Analysis_Env