## 多目相机的标定与图像配准
### 多目相机标定（Multiple camera calibration）
获取了bag格式的[多目相机数据集](https://drive.google.com/file/d/0B0T1sizOvRsUYU1XV0lBbjMyOG8/edit?usp=sharing)

用[kalibr](https://github.com/ethz-asl/kalibr)工具集实现了标定

### 解包为.jpg
查看某个.bag文件数据信息

```rosbag info *.bag```   

安装以下依赖项

```sudo apt-get install ffmpeg```

调整到需要存储图片的文件夹中，或者新建文件夹，执行以下命令，将```<IMAGE TOPIC IN BAGFILE>```替换为.bag中的topic信息

```rosrun image_view extract_images _sec_per_frame:=0.05 image:=<IMAGE TOPIC IN BAGFILE>```

新建终端，执行以下命令

```roscore```

新建终端，调整到待解析的rosbag文件目录下，回放rosbag包，执行以下命令：

```rosbag play -r 0.5  <BAG FILE>```

其中 -r 0.5表示回放速度，如果出现图片数量缺失的情况，可调整_sec_per_frame的值

### .jpg序列转.mjepg
已经安装了ffmpeg，接下来安装下列视频编码解码库
```
sudo apt-get install libxfixes-dev
sudo apt-get install libtheora-dev
sudo apt-get install libopencore-amrwb-dev
sudo apt-get install libopencore-amrnb-dev
```

安装ffmpeg到指定prefix

```
./configure --prefix=/usr/local/ffmpeg/ffmpeg --enable-gpl --enable-libfaac --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libx264 --enable-nonfree --enable-version3 --enable-x11grab --enable-avfilter
make
sudo checkinstall --pkgname=ffmpeg --pkgversion="5:$(./version.sh)" --backup=no --deldoc=yes --default
```

用jpg输出mjpeg

```
ffmpeg -y -probesize 5000000 -f image2 -r 24 -i <in%d.jpg> -an -pix_fmt yuvj422p -vcodec copy -s 2048x1152 -q:v 1 -f mov out.mov
```

其中```<in%d.jpg>```替换为输入的图片名，%d占位符表示数字，从1开始,可以使用%2d指定固定两位

### Video Capture
见[OpenCV 以MJEPG的格式 读取摄像头数据](https://blog.csdn.net/qq_41204464/article/details/84932625)

### 图像配准

用[IPOL_AC_RANSAC](https://github.com/pmoulon/IPOL_AC_RANSAC)实现了图片配准

下一步考虑修改代码，将输入改为Video Capture
