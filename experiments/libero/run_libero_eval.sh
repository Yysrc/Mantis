# In case EGL is not installed on your computer, execute the following commands to install it:
#   apt-get install libegl-dev

# sh experiments/libero/run_libero_eval.sh


python experiments/libero/run_libero_eval.py \
    --task_suite_name libero_spatial \
    --model_family mantis \
    --model_id /inspire/hdd/project/robot-dna/sujiadi-p-sujiadi/cyy/Mantis/output_libero_spatial/mantis_libero_spatial_image_action_language/checkpoint-11000 \
    --run_id_note None \
    --use_wandb False \
    --eval_mode temporal_ensemble \
    --dynamic_patches_threshold 0.12 \
    --target_patches_threshold 0.01 \
    --checkpoints_dir "" \
    --local_log_dir experiments/libero_eval_logs \
    --norm_file_path configs/norm_stats.json


# python experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_10 \
#     --model_family mantis \
#     --model_id Yysrc/LIBERO-Long \
#     --run_id_note None \
#     --use_wandb False \
#     --eval_mode temporal_ensemble \
#     --dynamic_patches_threshold 0.12 \
#     --target_patches_threshold 0.01 \
#     --checkpoints_dir "" \
#     --local_log_dir experiments/libero_eval_logs \
#     --norm_file_path configs/norm_stats.json


# action_chunking
# temporal_ensemble
# adaptive_temporal_ensemble
