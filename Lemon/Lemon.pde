public final color white = color(255);

PImage[] lemon;

int n;
int[] arr;
PImage[] arrImg;
s
int w;
int ind;

void settings()
{
  size(1000, 1000);
}

void setup()
{
  frameRate(3);
  
  // 280x280
  
  n = 20;
  lemon = new PImage[n];
  for (int i = 0; i < n; ++i)
  {
    lemon[i] = loadImage("lemon.jpg");
    lemon[i].resize(50, 50 * (i + 1));
  }
  
  arr = new int[n];
  arrImg = new PImage[n];
  
  for (int i = 0; i < n; ++i)
  {
    arr[i] = i + 1;
    arrImg[i] = lemon[i];
  }
  
  ind = 0;
}

void draw()
{
  background(white);
  for (int i = 0; i < n; ++i)
    image(arrImg[i], 50 * i, 0);
  
  if (ind >= n / 2)
    return;
  
  rev(arr, arrImg, ind);
  ++ind;
}

void rev(int[] arr, PImage[] arrImg, int ind)
{
  int temp = arr[n - 1 - ind];
  arr[n - 1 - ind] = arr[ind];
  arr[ind] = temp;
  
  PImage tempImg = arrImg[n - 1 - ind];
  arrImg[n - 1 - ind] = arrImg[ind];
  arrImg[ind] = tempImg;
}
