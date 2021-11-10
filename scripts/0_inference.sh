#!/bin/bash

# ------ Inference audio tagging result with pretrained model. ------
MODEL_TYPE="Cnn14"
CHECKPOINT_PATH="Cnn14_mAP=0.431.pth"

# Download audio tagging checkpoint.
wget -O $CHECKPOINT_PATH "https://zenodo.org/record/3987831/files/Cnn14_mAP%3D0.431.pth?download=1"

# Inference.
python3 pytorch/inference.py audio_tagging \
    --model_type=$MODEL_TYPE \
    --checkpoint_path=$CHECKPOINT_PATH \
    --audio_path="/home/pepeotalk/Downloads/RAP-COVER_-흰둥이-성우-정유미의-_머쉬베놈-커버-랩_-짖었..-아니-찢었다_.wav" \
    --cuda

# ------ Inference sound event detection result with pretrained model. ------
MODEL_TYPE="Cnn14_DecisionLevelMax"
CHECKPOINT_PATH="Cnn14_DecisionLevelMax_mAP=0.385.pth"

# Download sound event detection checkpoint.
wget -O $CHECKPOINT_PATH "https://zenodo.org/record/3987831/files/Cnn14_DecisionLevelMax_mAP%3D0.385.pth?download=1"

# Inference.
python3 pytorch/inference.py sound_event_detection \
    --model_type=$MODEL_TYPE \
    --checkpoint_path=$CHECKPOINT_PATH \
    --audio_path="/home/pepeotalk/Downloads/RAP-COVER_-흰둥이-성우-정유미의-_머쉬베놈-커버-랩_-짖었..-아니-찢었다_.wav" \
    --cuda
    