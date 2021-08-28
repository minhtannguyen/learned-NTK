#!/bin/bash

CUDA_VISIBLE_DEVICES=1 python main.py --dataset=cifar10 --data-aug=0 --model=PreActResNet18NTK --method=0