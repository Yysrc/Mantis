# In case EGL is not installed on your computer, execute the following commands to install it:
#   apt-get install libegl-dev

# conda activate mantis
# cd experiments
# sh libero/run_libero_eval.sh

export MJLIB_PATH=$HOME/.mujoco/mujoco200/bin/libmujoco200.so
export MJKEY_PATH=$HOME/.mujoco/mujoco200/mjkey.txt
export LD_LIBRARY_PATH=$HOME/.mujoco/mujoco200/bin:$LD_LIBRARY_PATH
export MUJOCO_PY_MJPRO_PATH=$HOME/.mujoco/mujoco200/
export MUJOCO_PY_MJKEY_PATH=$HOME/.mujoco/mujoco200/mjkey.txt
export MUJOCO_GL="glfw"
export DISPLAY=:0


# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_spatial \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Spatial \
#     --eval_mode action_chunking_temporal_agg \
#     --dynamic_tokens_threshold 0.12 \
#     --relevant_tokens_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_spatial_main_table_huggingface

# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_spatial \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Spatial \
#     --eval_mode action_chunking_dynamic_temporal_agg \
#     --dynamic_tokens_threshold 0.12 \
#     --relevant_tokens_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_spatial_main_table_huggingface_ATE



# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_object \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Object \
#     --eval_mode action_chunking_temporal_agg \
#     --dynamic_tokens_threshold 0.12 \
#     --relevant_tokens_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_object_main_table_huggingface

# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_object \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Object \
#     --eval_mode action_chunking_dynamic_temporal_agg \
#     --dynamic_tokens_threshold 0.12 \
#     --relevant_tokens_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_object_main_table_huggingface_ATE



# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_goal \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Goal \
#     --eval_mode action_chunking_temporal_agg \
#     --dynamic_tokens_threshold 0.12 \
#     --relevant_tokens_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_goal_main_table_huggingface

# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_goal \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/huggingface_ckpts/LIBERO-Goal \
#     --eval_mode action_chunking_dynamic_temporal_agg \
#     --dynamic_tokens_threshold 0.12 \
#     --relevant_tokens_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_goal_main_table_huggingface_ATE



# python /data/yangyi/mantis_action_refactoring/experiments/libero/run_libero_eval.py \
#     --task_suite_name libero_10 \
#     --center_crop False \
#     --run_id_note None \
#     --use_wandb False \
#     --model_id /data/yangyi/hf_models_upload/libero_long_main_table/whole_models/epoch59_56_step97500 \
#     --eval_mode action_chunking_temporal_agg \
#     --dynamic_tokens_threshold 0.12 \
#     --relevant_tokens_threshold 0.01 \
#     --checkpoints_dir "" \
#     --model_family libero_10_main_table_huggingface_epoch59_56_step97500

python libero/run_libero_eval.py \
    --task_suite_name libero_10 \
    --center_crop False \
    --run_id_note None \
    --use_wandb False \
    --model_id /data/yangyi/Mantis_models/LIBERO-Long \
    --eval_mode action_chunking_dynamic_temporal_agg \
    --dynamic_tokens_threshold 0.12 \
    --relevant_tokens_threshold 0.01 \
    --checkpoints_dir "" \
    --model_family libero_10_main_table


# action_chunking
# action_chunking_temporal_agg
# action_chunking_dynamic_temporal_agg
