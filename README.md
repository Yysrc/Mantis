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
- [🎥 Demos](#demos)
- [🤗 Models & Datasets](#models)
- [⚡ Quick Start](#getting_start)
- [📈 Evaluation](#evaluation)
- [🔧 Training](#training)
- [📚 Citation](#citation)


## Demos
#### In-domain instructions (3x speed):
<table style="width:100%;border-collapse:collapse;table-layout: fixed">
<tr>
  <td style="text-align:center;width:33.33%;">Put the cup on<br>the female singer</td>
  <td style="text-align:center;width:33.33%;">Put the cup on<br>the Marval superhero</td>
  <td style="text-align:center;width:33.33%;">Put the watch<br>in the basket</td>
</tr>
<tr>
  <td><img src="assets/mantis_id_taylor_x3.gif" alt="mantis_id_taylor_x3"></td>
  <td><img src="assets/mantis_id_ironman_x3.gif" alt="mantis_id_ironman_x3"></td>
  <td><img src="assets/mantis_id_watch_x3.gif" alt="mantis_id_watch_x3"></td>
</tr>
<tr>
<table>

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
<tr>
<table>




#### Create environment

```
cd mantis_action
conda env create -f environment.yml
conda activate mantis_action
```



#### LIBERO Setup

Clone and install the [LIBERO repo](https://github.com/Lifelong-Robot-Learning/LIBERO):

```
git clone https://github.com/Lifelong-Robot-Learning/LIBERO.git
cd LIBERO
pip install -e .
```

Additionally, install other required packages:

```
cd ..
pip install -r experiments/robot/libero/libero_requirements.txt
```



#### Training

First, modify the content of the configuration file. The `training_mode` can be set to train either the image generation function or the action generation function. The available options are `"action"`, `"image"`, and `"mix"`.

```
torchrun --nproc-per-node=4 train.py \
	--run_name mantis_action_test \
	--config_file qwen2p5vl3b_sana.yaml \
    --base_dir /data/yangyi/mantis_action \
    --logging_dir /data/yangyi/mantis_action/log \ 
	> /data/yangyi/mantis_action/log/mantis_action.log 2>&1
```



#### Evaluation

- Evaluation on LIBERO:

  ```
  sh experiments/libero/run_libero_eval.sh
  ```

  
