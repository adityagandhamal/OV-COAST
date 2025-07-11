# OV-COAST: Cost Aggregation with Optimal Transport for Open-Vocabulary Semantic Segmentation [CVPRW 2025]
The official implementation of OV-COAST

Open-vocabulary semantic segmentation (OVSS) entails assigning semantic labels to each pixel in an image using textual descriptions, typically leveraging world mod
els such as CLIP. To enhance out-of-domain generalization,
 we propose Cost Aggregation with Optimal Transport (OV
COAST) for open-vocabulary semantic segmentation. To
 align visual-language features within the framework of opti
mal transport theory, we employ cost volume to construct a
 cost matrix, which quantifies the distance between two dis
tributions. Our approach adopts a two-stage optimization
 strategy: in the first stage, the optimal transport problem
 is solved using cost volume via Sinkhorn distance to obtain
 an alignment solution; in the second stage, this solution is
 used to guide the training of the CAT-Seg model. We evalu
ate state-of-the-art OVSS models on the MESS benchmark,
 where our approach notably improves the performance of
 the cost-aggregation model CAT-Seg with ViT-B backbone,
 achieving superior results—surpassing CAT-Seg by 1.72%
 and SAN-B by 4.9% mIoU.
 
 ![fig1.png](https://github.com/adityagandhamal/OV-COAST/blob/main/fig1.png)

## Installation
Please follow [installation](INSTALL.md). 

## Data Preparation
- [For setting the COCO-Stuff dataset](https://github.com/cvlab-kaist/CAT-Seg/tree/main/datasets)
- [Setting the MESS Benchmark for evaluation](https://github.com/blumenstiel/MESS/blob/main/DATASETS.md)

## Training
```sh run.sh``` trains the model in default configuration.

## Evaluation
```sh eval.sh``` evaluates the model on the MESS Benchmark.

## Checkpoint
The pretrained checkpoint can be accessed [here](https://drive.google.com/drive/u/1/folders/1X88GJfj2dA2IG8RieTALnemiay8RJLdn)

## Performance on the MESS Benchmark
![fig2.png](https://github.com/adityagandhamal/OV-COAST/blob/main/fig2.png)

## Acknowledgement
We would like to acknowledge [CAT-Seg](https://github.com/cvlab-kaist/CAT-Seg), which has served as our baseline for this work and whose code has been utilized in this repository.
