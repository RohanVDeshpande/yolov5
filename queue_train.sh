#!/bin/bash
source /cvgl2/u/mihirp/GIoU/Detectron.pytorch/venv/bin/activate
# source /cvgl2/u/mihirp/JRDB/detectron2/vars.sh

# echo "GIoU Training"
python train.py --data coco.yaml --cfg yolov5s.yaml --weights '' --batch-size 64 --loss giou

echo "GIoU++ Training"
python train.py --data coco.yaml --cfg yolov5s.yaml --weights '' --batch-size 64 --loss gioupp

echo "CIoU Training"
python train.py --data coco.yaml --cfg yolov5s.yaml --weights '' --batch-size 64 --loss ciou
