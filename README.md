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



## Table of Contents
- [🎥 Demos](#-demos)
- [🤗 Models & Datasets](#-models--datasets)
- [📈 Evaluation](#evaluation)
- [🔧 Training](#training)
- [📚 Citation](#citation)


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
