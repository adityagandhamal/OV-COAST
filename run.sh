gpu_ids="0"
export CUDA_VISIBLE_DEVICES=$gpu_ids

python train_net.py --config configs/config.yaml \
 --num-gpus 1 \
 --dist-url "auto" \
 --resume \
 OUTPUT_DIR output \
 MODEL.SEM_SEG_HEAD.CLIP_FINETUNE "attention" \
 SOLVER.MAX_ITER "80000" \
 $opts