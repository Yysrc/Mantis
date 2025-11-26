# Save huggingface checkpoint as simplified models
import os
import sys
import torch
sys.path.append(os.getcwd())
from models.mantis import Mantis

model_path = "checkpoint_dir"
mantis = Mantis.from_pretrained(
    model_path,
)
mantis.load_state_dict(torch.load("model.pt"))
mantis.model.mllm_backbone.save_pretrained("save_dir")