# Save huggingface checkpoint as simplified models
import os
import sys
import torch
sys.path.append(os.getcwd())
from models.mantis import Mantis

model_path = "/inspire/hdd/project/robot-dna/sujiadi-p-sujiadi/cyy/Mantis/output_libero_spatial/mantis_libero_spatial_image_action_language/checkpoint-200"
mantis = Mantis.from_pretrained(
    model_path,
)
mantis.load_state_dict(torch.load("/inspire/hdd/project/robot-dna/sujiadi-p-sujiadi/cyy/Mantis/checkpoints_libero_spatial/whole_model/epoch0_06_step50/model.pt"))
# mantis.save_pretrained("save_dir")
weight1 = mantis.model.mllm_backbone.model.embed_tokens.weight.clone()


mantis.load_state_dict(torch.load("/inspire/hdd/project/robot-dna/sujiadi-p-sujiadi/cyy/Mantis/checkpoints_libero_spatial/whole_model/epoch0_18_step150/model.pt"))
weight2 = mantis.model.mllm_backbone.model.embed_tokens.weight.clone()

print("第一个权重的形状:", weight1.shape)
print("第二个权重的形状:", weight2.shape)






total_rows = weight1.shape[0]
print(f"总行数: {total_rows:,}\n")

# ==============================================
# 核心：按行比较（判断整行是否完全相同）
# ==============================================
# 方法1：逐行判断（直观，适合理解）
same_rows_count = 0
same_rows_indices = []  # 记录相同行的索引
different_rows_indices = []  # 记录不同行的索引

# 可选：考虑浮点数精度（建议开启）
epsilon = 1e-6

for row_idx in range(total_rows):
    # 方式1：严格相等（适合整数/无精度误差的场景）
    # row_equal = torch.equal(weight1[row_idx], weight2[row_idx])
    
    # 方式2：近似相等（适合浮点数权重，推荐）
    # row_equal = torch.all(torch.isclose(weight1[row_idx], weight2[row_idx], atol=epsilon)).item()
    row_equal = torch.all(weight1[row_idx] == weight2[row_idx]).item()
    
    if row_equal:
        same_rows_count += 1
        same_rows_indices.append(row_idx)
    else:
        different_rows_indices.append(row_idx)

# 计算比例
same_rows_ratio = same_rows_count / total_rows * 100
different_rows_count = total_rows - same_rows_count

# 输出核心结果
print("===== 按行对比结果 =====")
print(f"相同的行数: {same_rows_count:,} / {total_rows:,}")
print(f"相同行比例: {same_rows_ratio:.4f}%")
print(f"不同的行数: {different_rows_count:,} / {total_rows:,}")
print(f"不同行比例: {100 - same_rows_ratio:.4f}%")

# 可选：输出前10个相同/不同行的索引（便于验证）
print(f"\n前10个相同行的索引: {same_rows_indices[:10]}")
print(f"不同行的索引: {different_rows_indices}")

for id in different_rows_indices:
    token = mantis.model.tokenizer.decode(id)
    print(f"{id} : {token}")