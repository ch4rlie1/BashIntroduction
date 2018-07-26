#!/bin/bash
#SBATCH --time 5
#SBATCH --qos bearchal02
#SBATCH --reservation BearChallenge
#SBATCH --mail-type ALL

set -e

module purge; module load bluebear 
module load apps/java/1.8.0_92

javac HelloWorld.java
java HelloWorld 4
