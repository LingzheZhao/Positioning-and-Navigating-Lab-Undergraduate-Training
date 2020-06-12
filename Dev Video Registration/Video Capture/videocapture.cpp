#include <opencv2/opencv.hpp>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
 
using namespace cv;
using namespace std;
//从摄像头中读入数据
int main(int argc,char** argv)
{
cvNamedWindow("Example1",CV_WINDOW_AUTOSIZE);
CvCapture* capture;          //初始化一个CvCapture结构的指针
if(argc==1)
{
capture=cvCaptureFromCAM(0);  //从摄像头中读入数据，并返回一个CvCapture的指针
}                     //注：《学习OpenCV》中此处用cvCreateCameraCapture为错
else
{
capture=cvCreateFileCapture(argv[1]);
}
assert(capture!=NULL); //断言（assert）使用，检查capture是否为空指针，为假时程序退出，并打印错误消息
IplImage* frame;
while(1)
{
frame=cvQueryFrame(capture);//用于将下一帧文件载入内存（实际是填充和更新CvCapture结构中），返回一个对应当前帧的指针
if(!frame)
break;
cvShowImage("Example1",frame);
char c=cvWaitKey(33);
if(c==27) break; //出发ESC键退出循环，读入数据停止
}
cvReleaseCapture(&capture);//释放内存
cvDestroyWindow("Example1");
}
