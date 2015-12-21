#-------------------------
# MonArch cluster specials
#-------------------------

# source lmod special bash script file to enable module load cmds
if [[ -f /usr/local/lmod/5.8.6/init/bash ]]; then
  export MODULEPATH=/usr/local/modules 
  # dot is special character for source cmd
  . /usr/local/lmod/5.8.6/init/bash 
  # check and load for relevant tools/modules 
  if [[ -f /usr/local/modules/bio/samtools/1.2.lua ]]; then
     module load bio/samtools/1.2 
  fi 
fi   
