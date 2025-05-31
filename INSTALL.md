## Installation

### Requirements
- Linux or macOS with Python ≥ 3.8
- PyTorch ≥ 2.1 is recommended and [torchvision](https://github.com/pytorch/vision/) that matches the PyTorch installation.
  Install them together at [pytorch.org](https://pytorch.org) to make sure of this. Note, please check
  PyTorch version matches that is required by Detectron2.
- Detectron2: follow [Detectron2 installation instructions](https://detectron2.readthedocs.io/tutorials/install.html).
- OpenCV is optional but needed by demo and visualization
- `pip install -r requirements.txt`

An example of installation is shown below:

```
git clone https://github.com/adityagandhamal/OV-COAST.git
cd OV-COAST
conda create -n ovcoast python=3.8
conda activate ovcoast
conda install pytorch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 pytorch-cuda=12.0 -c pytorch -c nvidia
pip install -r requirements.txt
```
