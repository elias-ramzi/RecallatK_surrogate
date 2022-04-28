#!/bin/bash
#SBATCH --job-name=I_R@k     # job name
#SBATCH --ntasks=1                   # number of MP tasks
#SBATCH --ntasks-per-node=1          # number of MPI tasks per node
#SBATCH --gres=gpu:1                # number of GPUs per node
#SBATCH --cpus-per-task=10           # number of cores per tasks
#SBATCH --hint=nomultithread         # we get physical cores not logical
#SBATCH --distribution=block:block   # we pin the tasks on contiguous cores
#SBATCH --time=80:00:00              # temps d’exécution maximum demande (HH:MM:SS)
#SBATCH --qos=qos_gpu-t4
#SBATCH --output=logs/%A_%a.out # output file name
#SBATCH --error=logs/%A_%a.err  # error file name
#SBATCH --array=0

set -x
cd $WORK/RecallatK_surrogate

module purge
module load pytorch-gpu/py3/1.8.1

export TORCH_HOME=${SCRATCH}/pretrained_models
export TQDM_DISABLE='yes'
export TMPDIR=$JOBSCRATCH


srun python main.py \
--dataset Inaturalist \
--source_path $SCRATCH \
--amp \
--infrequent_eval 1000
