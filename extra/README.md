cedar test:
```
apt-get install git make gcc ffmpeg 
git clone https://github.com/jemk/cedrus
cd h264enc
make
```
Encode
```
ffmpeg -f lavfi -i testsrc -t 5 -pix_fmt nv12 -video_size 320×240 -r 25 -f rawvideo pipe: | ./h264enc – 320 240 test.h264
```
on host:
```
ffplay test.h264
```
