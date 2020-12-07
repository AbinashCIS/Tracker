# Person Tracking

Tracking person in realtime using Yolo and DeepSORT.

# Files

Permissions Size User Date Modified Name
drwxrwxr-x     - cis   5 Dec 10:37  .
drwxrwxr-x     - cis   5 Dec 10:33  ├── deep_sort
drwxrwxr-x     - cis   1 Dec 12:33  │  ├── configs
drwxrwxr-x     - cis   1 Dec 12:57  │  ├── deep_sort
drwxrwxr-x     - cis   1 Dec 12:33  │  ├── demo
drwxrwxr-x     - cis   1 Dec 12:33  │  ├── detector
.rw-rw-r--  6.1k cis   1 Dec 12:33  │  ├── ped_det_server.py
.rw-rw-r--  4.9k cis   1 Dec 12:33  │  ├── README.md
drwxrwxr-x     - cis   1 Dec 12:33  │  ├── scripts
drwxrwxr-x     - cis   1 Dec 12:57  │  ├── utils
drwxrwxr-x     - cis   1 Dec 12:33  │  ├── webserver
.rw-rw-r--  5.5k cis   1 Dec 12:33  │  ├── yolov3_deepsort.py
.rw-rw-r--  3.0k cis   1 Dec 12:33  │  └── yolov3_deepsort_eval.py
.rw-rw-r--   841 cis   5 Dec 10:33  ├── requirements.txt
.rw-rw-r--   10k cis   3 Dec 15:10  ├── track.py
drwxrwxr-x     - cis   1 Dec 12:33  └── yolov5
.rw-rw-r--  7.6k cis   1 Dec 12:33     ├── detect.py
.rw-rw-r--  1.8k cis   1 Dec 12:33     ├── Dockerfile
.rw-rw-r--  3.4k cis   1 Dec 12:33     ├── hubconf.py
.rw-rw-r--   35k cis   1 Dec 12:33     ├── LICENSE
drwxrwxr-x     - cis   1 Dec 12:57     ├── models
.rwxrwxr-x   10k cis   1 Dec 12:33     ├── README.md
.rwxrwxr-x   526 cis   1 Dec 12:33     ├── requirements.txt
.rw-rw-r--   13k cis   1 Dec 12:33     ├── test.py
.rw-rw-r--   27k cis   1 Dec 12:33     ├── train.py
.rw-rw-r--  3.3M cis   1 Dec 12:33     ├── tutorial.ipynb
drwxrwxr-x     - cis   1 Dec 12:57     ├── utils
drwxrwxr-x     - cis   2 Dec 10:45     └── weights

## Requirements
```
absl-py==0.11.0
APScheduler==3.6.3
astroid==2.4.2
cachetools==4.1.1
certifi==2020.11.8
chardet==3.0.4
cycler==0.10.0
Cython==0.29.21
dataclasses==0.6
easydict==1.9
future==0.18.2
google-auth==1.23.0
google-auth-oauthlib==0.4.2
grpcio==1.33.2
idna==2.10
isort==5.6.4
kiwisolver==1.3.1
lazy-object-proxy==1.4.3
Markdown==3.3.3
matplotlib==3.3.3
mccabe==0.6.1
numpy==1.19.4
oauthlib==3.1.0
opencv-python==4.4.0.46
Pillow==8.0.1
protobuf==3.14.0
pyasn1==0.4.8
pyasn1-modules==0.2.8
pylint==2.6.0
pyparsing==2.4.7
python-dateutil==2.8.1
pytz==2020.4
PyYAML==5.3.1
requests==2.25.0
requests-oauthlib==1.3.0
rsa==4.6
scipy==1.5.4
six==1.15.0
tensorboard==2.4.0
tensorboard-plugin-wit==1.7.0
toml==0.10.2
torch==1.6.0
torchvision==0.7.0
tqdm==4.54.0
typing-extensions==3.7.4.3
tzlocal==2.1
urllib3==1.26.2
Werkzeug==1.0.1
wrapt==1.12.1
yapf==0.30.0
```

## Installation

```
pyhton3 -m venv env
source env/bin/activate
pip install -r requirements.txt
```


## Run 
```
python track.py --source video.mp4 --output Video/ --view-img --save-txt 
```
or with CUDA
```
python track.py --source video.mp4 --output Video/ --view-img --save-txt --device 0
```
Using Webcam
```
python track.py --source 0 --output Video/ --view-img --save-txt
```
Using http stream
```
python track.py --source http://wmccpinetop.axiscam.net/mjpg/video.mjpg --output Video/ --view-img --save-txt
```
Using RTSP stream
```
python track.py --source rtsp://170.93.143.139/rtplive/470011e600ef003a004ee33696235daa --output Video/ --view-img --save-txt
```
## Docker
Build Docker Image
``` 
sudo docker build -t yolodeepsort .
sudo docker run -t -i --rm yolodeepsort bash
python track.py --source video.mp4 --output Video/ --view-img --save-txt 
```
Or run from Docker Image
```
sudo docker load --input yolodeepsort.tar 
sudo docker run -t -i --rm yolodeepsort bash
python track.py --source video.mp4 --output Video/ --view-img --save-txt
```


