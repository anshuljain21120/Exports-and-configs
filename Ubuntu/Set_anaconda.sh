cd
conda config --set auto_activate_base false
source ~/.bashrc
conda activate base
# Updating base
conda install -c anaconda cupy --yes
conda install -c anaconda selenium --yes
conda install -c plotly plotly --yes
conda install py-xgboost-gpu --yes
conda install -c conda-forge line_profiler --yes
conda config --add channels conda-forge
conda update --all --yes
# Updating .condarc
echo -e 'create_default_packages:' >> .condarc
echo -e '  - pip' >> .condarc
echo -e '  - notebook' >> .condarc
echo -e '  - numpy' >> .condarc
echo -e '  - scipy' >> .condarc
echo -e '  - pandas' >> .condarc
echo -e '  - matplotlib' >> .condarc
echo -e '  - numba' >> .condarc
echo -e '  - cupy' >> .condarc
echo -e '  - cudatoolkit' >> .condarc
echo -e '  - cudnn' >> .condarc
echo -e '  - scikit-learn' >> .condarc
echo -e '  - selenium' >> .condarc
echo -e '  - seaborn' >> .condarc
echo -e '  - urllib3' >> .condarc
echo -e '  - plotly' >> .condarc
# Creating Environments
conda create -n Main --clone base --yes
conda create -n PyT --clone Main --yes
conda create -n TF --clone Main --yes
conda create -n CV --yes
conda create -n NLP --clone Main --yes
# Updating Environments
#	Pytorch
conda install -n PyT pytorch torchvision --yes
conda update -n PyT --all --yes
#	Tensorflow
conda install -n TF tensorflow-gpu --yes
conda update -n TF --all --yes
#	Computer Vision
conda install -n CV -c menpo opencv --yes
conda activate CV
conda config --env --add channels menpo
conda update -n CV --all --yes
pip install --upgrade pip
pip install opencv-contrib-python
conda activate base
#	NLP
conda install -n NLP -c conda-forge spacy spacy-lookups-data --yes
conda update -n NLP --all --yes
# Updating Conda
conda update conda --yes
#
#
# To load %lprun command extension by default in Notebook
FILE="$(ipython locate)/profile_default/ipython_config.py"
ipython profile create
cd "$(ipython locate)/profile_default"
echo -e "\n\n#------------------------Set by Set_anaconda.sh--------------------------------" >> ipython_config.py
echo -e 'c.TerminalIPythonApp.extensions = [' >> ipython_config.py
echo -e "    'line_profiler'," >> ipython_config.py
echo -e ']' >> ipython_config.py
echo -e '#------------------------------------------------------------------------------' >> ipython_config.py
cd
conda deactivate 
