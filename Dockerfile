FROM python:3.8.5
FROM jjanzic/docker-python3-opencv
WORKDIR /YOLOV5_DEEPSORT_PYTORCH

COPY requirements.txt .

RUN pip install -r requirements.txt
RUN pip install torch==1.6.0+cpu torchvision==0.7.0+cpu -f https://download.pytorch.org/whl/torch_stable.html
RUN apt-get update 
RUN apt-get install 'ffmpeg'\
    'libsm6'\ 
    'libxext6'\
    'libgtk2.0-dev'\
    'pkg-config'  -y
RUN apt-get -y install libglib2.0-0 
RUN apt-get -y install libsm6 libxrender-dev libxext6
RUN apt-get install -y x11-apps

CMD ["/usr/bin/xeyes"]
COPY track.py .
ADD deep_sort deep_sort
ADD yolov5 yolov5
COPY example_01.mp4 .

CMD ["python3", "./track.py", "--source", "example_01.mp4", "--output", "Video/","--save-txt", "--conf-thres", "0.55"]
