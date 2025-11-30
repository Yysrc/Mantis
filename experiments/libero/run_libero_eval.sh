# In case EGL is not installed on your computer, execute the following commands to install it:
#   apt-get install libegl-dev

# sh experiments/libero/run_libero_eval.sh


# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_spatial \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Spatial \
#     --eval_mode temporal_ensemble \
#     --dynamic_patches_threshold 0.12 \
#     --target_patches_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_spatial_main_table_huggingface

# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_spatial \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Spatial \
#     --eval_mode adaptive_temporal_ensemble \
#     --dynamic_patches_threshold 0.12 \
#     --target_patches_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_spatial_main_table_huggingface_ATE



# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_object \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Object \
#     --eval_mode temporal_ensemble \
#     --dynamic_patches_threshold 0.12 \
#     --target_patches_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_object_main_table_huggingface

# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_object \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Object \
#     --eval_mode adaptive_temporal_ensemble \
#     --dynamic_patches_threshold 0.12 \
#     --target_patches_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_object_main_table_huggingface_ATE



# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_goal \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Goal \
#     --eval_mode temporal_ensemble \
#     --dynamic_patches_threshold 0.12 \
#     --target_patches_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_goal_main_table_huggingface

# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_goal \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Goal \
#     --eval_mode adaptive_temporal_ensemble \
#     --dynamic_patches_threshold 0.12 \
#     --target_patches_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_goal_main_table_huggingface_ATE



# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_10 \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/hf_models_upload/libero_long_main_table/whole_models/epoch59_56_step97500 \
#     --eval_mode temporal_ensemble \
#     --dynamic_patches_threshold 0.12 \
#     --target_patches_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_10_main_table_huggingface_epoch59_56_step97500










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
