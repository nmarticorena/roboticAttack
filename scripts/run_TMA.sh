#!/bin/bash
current_dir=$(pwd)
echo $current_dir
python VLAAttacker/TMA_wrapper.py \
    --maskidx 0 \
    --lr 2e-3 \
    --server $current_dir \
    --device 0 \
    --iter 2000 \
    --accumulate 1 \
    --bs 1 \
    --warmup 20 \
    --tags "debug testrun" \
    --filterGripTrainTo1 false \
    --geometry true \
    --patch_size "3,50,50" \
    --wandb_project "robotic_attack" \
    --wandb_entity "qcr_neural_fields" \
    --innerLoop 1 \
    --dataset "libero_spatial" \
    --targetAction 0
