# torchrun --nproc-per-node=8 train.py \
#     --run_name mantis_action_droid_gap4_6actquery_3gapquery \
#     --config_file /data/yangyi/mantis_action_refactoring/configs/action_training_droid.yaml \
#     --base_dir /data/yangyi/mantis_action_refactoring \
#     --logging_dir /data/yangyi/mantis_action_refactoring/log \
#     > /data/yangyi/mantis_action_refactoring/log/mantis_action.log 2>&1

# torchrun --nproc-per-node=8 train.py \
#     --run_name mantis_action_droid_gap4_6actquery_3gapquery \
#     --config_file /data/yangyi/mantis_action_refactoring/configs/image_action_training_libero.yaml \
#     --base_dir /data/yangyi/mantis_action_refactoring \
#     --logging_dir /data/yangyi/mantis_action_refactoring/log \
#     > /data/yangyi/mantis_action_refactoring/log/mantis_spatial_image_action.log 2>&1


# torchrun --nproc-per-node=8 train.py \
#     --run_name mantis_image_action_language \
#     --config_file /data/yangyi/mantis_action_refactoring/configs/image_action_language_training_droid_ddp.yaml \
#     --base_dir /data/yangyi/mantis_action_refactoring \
#     --logging_dir /data/yangyi/mantis_action_refactoring/log \
#     > /data/yangyi/mantis_action_refactoring/log/mantis_image_action_language_without_language.log 2>&1


torchrun --nproc-per-node=8 train.py \
    --run_name mantis_libero_spatial_image_action_language \
    --config_file /inspire/hdd/project/robot-dna/sujiadi-p-sujiadi/cyy/Mantis/configs/libero_spatial_image_action.yaml \
    --base_dir /inspire/hdd/project/robot-dna/sujiadi-p-sujiadi/cyy/Mantis \
    --logging_dir /inspire/hdd/project/robot-dna/sujiadi-p-sujiadi/cyy/Mantis/log \
    > /inspire/hdd/project/robot-dna/sujiadi-p-sujiadi/cyy/Mantis/log/mantis_libero_spatial_image_action_language.log 2>&1