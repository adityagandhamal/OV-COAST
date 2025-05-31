gpu_ids="0"
export CUDA_VISIBLE_DEVICES=$gpu_ids

# MESS Benchmark
TEST_DATASETS="dark_zurich_sem_seg_val mhp_v1_sem_seg_test foodseg103_sem_seg_test atlantis_sem_seg_test isaid_sem_seg_val isprs_potsdam_sem_seg_test_irrg worldfloods_sem_seg_test_irrg floodnet_sem_seg_test uavid_sem_seg_val kvasir_instrument_sem_seg_test chase_db1_sem_seg_test cryonuseg_sem_seg_test corrosion_cs_sem_seg_test deepcrack_sem_seg_test pst900_sem_seg_test zerowaste_sem_seg_test suim_sem_seg_test cub_200_sem_seg_test cwfid_sem_seg_test"

for DATASET in $TEST_DATASETS
do
 python train_net.py --config configs/configs_ovcoast.yaml \
 --num-gpus 1 \
 --dist-url "auto" \
 --eval-only \
 OUTPUT_DIR  eval_output \
 MODEL.SEM_SEG_HEAD.TEST_CLASS_JSON "datasets/$DATASET.json" \
 DATASETS.TEST \(\"$DATASET\",\)\
 TEST.SLIDING_WINDOW "True" \
 MODEL.SEM_SEG_HEAD.POOLING_SIZES "[1,1]" \
 MODEL.WEIGHTS "output/model_final.pth" \
 $opts
done