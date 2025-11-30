#### Note: This repository is currently undergoing refactoring, which is expected to be completed by December 4th. Please note that running the code at this time may result in errors.



<h3 align="center">
  <a href="https://github.com/zhijie-group/Mantis" style="color:#567053">Mantis: A Versatile Vision-Language-Action Model<br>with Disentangled Visual Foresight</a>
</h3>

<h4 align="center"> 
  If you find our project helpful, please give us a star ⭐ to support us 🙏🙏
</h4>

<p align="center">
  <a href="https://arxiv.org/pdf/2511.16175"><b>📄 Paper</b></a> |
  <a href="https://huggingface.co/collections/Yysrc/mantis"><b>🤗 Checkpoints</b></a> |
  <a href="./LICENSE"><b>📜 License</b></a>
</p>

![head](assets/head.png)



## 📘 Contents
- [Demos](#-demos)
- [Introduction](#-introduction)
- [Models & Datasets](#-models--datasets)
- [Evaluation](#-evaluation)
- [Training](#-training)
- [Citation](#-citation)
- [Acknowledgements](#acknowledgements)


## 🎥 Demos
More demos coming soon...
#### In-domain instructions (3x speed):
<table style="width:100%;border-collapse:collapse;table-layout: fixed">
<tr>
  <td style="text-align:center;width:33.33%;">Put the cup on<br>the female singer</td>
  <td style="text-align:center;width:33.33%;">Put the cup on<br>the Marvel superhero</td>
  <td style="text-align:center;width:33.33%;">Put the watch<br>in the basket</td>
</tr>
<tr>
  <td><img src="assets/mantis_id_taylor_x3.gif" alt="mantis_id_taylor_x3"></td>
  <td><img src="assets/mantis_id_ironman_x3.gif" alt="mantis_id_ironman_x3"></td>
  <td><img src="assets/mantis_id_watch_x3.gif" alt="mantis_id_watch_x3"></td>
</tr>
</table>

#### Out-of-domain instructions (3x speed):
<table style="width:100%;border-collapse:collapse;table-layout: fixed">
<tr>
  <td style="text-align:center;width:33.33%;">Put the cup on<br>Taylor Swift</td>
  <td style="text-align:center;width:33.33%;">Put the cup on<br>Iron Man</td>
  <td style="text-align:center;width:33.33%;">Put a thing that can<br>tell the time in the basket</td>
</tr>
<tr>
  <td><img src="assets/mantis_ood_taylor_x3.gif" alt="mantis_id_taylor_x3"></td>
  <td><img src="assets/mantis_ood_ironman_x3.gif" alt="mantis_id_ironman_x3"></td>
  <td><img src="assets/mantis_ood_watch_x3.gif" alt="mantis_id_watch_x3"></td>
</tr>
</table>



## 📖 Introduction

#### Previous vision-augmented action learning paradigms
![arch](assets/differences.png)

#### Overall framework of Mantis
![arch](assets/arch.png)






## 🤗 Models & Datasets
<table style="width:100%;border-collapse:collapse;table-layout: fixed">
  <tr>
    <th style="text-align:center;width:25%;">Model</th>
    <th style="text-align:center;width:75%;">Note</th>
  </tr>
  <tr>
    <td><a href="https://huggingface.co/Yysrc/Mantis-Base">Mantis-Base</a></td>
    <td>Base Mantis model trained through the 3-stage pretraining pipeline</td></td>
  </tr>
  <tr>
    <td><a href="https://huggingface.co/Yysrc/SSV2-Pretrained">Mantis-SSV2</a></td>
    <td>Mantis model pretrained on the SSV2 dataset after Stage 1</td>
  </tr>
  <tr>
    <td>
    <a href="https://huggingface.co/collections/Yysrc/mantis">Mantis-LIBERO</a>
    </td>
    <td>Mantis model fine-tuned on the LIBERO dataset</td>
  </tr>
</table>

<table style="width:100%;border-collapse:collapse;table-layout: fixed">
  <tr>
    <th style="text-align:center;width:40%;">Dataset</th>
    <th style="text-align:center;width:60%;">Note</th>
  </tr>
  <tr>
    <td><a href="https://www.qualcomm.com/developer/software/something-something-v-2-dataset">Something-Something-v2</a></td>
    <td>The human action video dataset used in Stage 1 pretraining</td></td>
  </tr>
  <tr>
    <td><a href="https://huggingface.co/datasets/IPEC-COMMUNITY/droid_lerobot">DROID-Lerobot</a></td>
    <td>The robot dataset used in Stage 2 & 3 pretraining</td>
  </tr>
  <tr>
    <td>
    <a href="https://huggingface.co/datasets/mvp-lab/LLaVA-OneVision-1.5-Instruct-Data">LLaVA-OneVision-1.5-Instruct-Data</a>
    </td>
    <td>The multimodal dataset used in Stage 3 pretraining</td>
  </tr>
    <tr>
    <td>
    <a href="https://huggingface.co/datasets/Yysrc/mantis_libero_lerobot">LIBERO-Lerobot</a>
    </td>
    <td>The LIBERO dataset used for fine-tuning</td>
  </tr>
</table>



## 📈 Evaluation
First, clone the repository and create the conda environment:
```
git clone git@github.com:Yysrc/Mantis.git
cd Mantis
conda create -n mantis_libero python=3.11 -y
conda activate mantis_libero
```
```
pip install torch==2.5.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
pip install -r requirements.txt
```
Then clone and install the [LIBERO repository](https://github.com/Lifelong-Robot-Learning/LIBERO):
```
git clone git@github.com:Lifelong-Robot-Learning/LIBERO.git
cd LIBERO
pip install -e .
```
Install other required packages:
```
cd Mantis
pip install -r experiments/libero/libero_requirements.txt
```
Evaluate the Libero benchmark:
```
sh experiments/libero/run_libero_eval.sh
```
Modify the `task_suite_name` parameter in the script to evaluate different task suites. Adjust the `eval_mode` parameter to switch between $\textbf{TE}$ and $\textbf{ATE}$ modes.


## 🔧 Training

## 📝 Citation
If you find our code or models useful in your work, please cite [our paper](https://arxiv.org/pdf/2511.16175):
```
@article{yang2025mantis,
  title={Mantis: A Versatile Vision-Language-Action Model with Disentangled Visual Foresight},
  author={Yang, Yi and Li, Xueqi and Chen, Yiyang and Song, Jin and Wang, Yihan and Xiao, Zipeng and Su, Jiadi and Qiaoben, You and Liu, Pengfei and Deng, Zhijie},
  journal={arXiv preprint arXiv:2511.16175},
  year={2025}
}
```

## ✨ Acknowledgements
Heartfelt thanks to the creators of [Metaquery](https://github.com/facebookresearch/metaquery) and [Lerobot](https://github.com/huggingface/lerobot) for their open-sourced work!
