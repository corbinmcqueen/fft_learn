float px,py;
float dx=1;
void setup() {
   size(screenWidth, screenHeight);
background(0);
colorMode(HSB);
px=width/2;
py=5;
}

void draw() {
float idx,ddx;
idx=px;
if(py<height){
py++;
} else{
py=0;
}
if(px>width-pmouseX){
dx*=-1;
px+=dx;
}if(px<0){
dx*=-1;
px+=dx;
}
if(px==mouseX){
dx*=-1;
px+=dx;
} else if(px==mouseX-dx){
dx*=-1;
px+=dx;
}
px+=dx;
int changeX;
if(idx!=dx){
ddx+=idx;
idx=px;
}else {
changeX=idx-ddx;
ddx=dx;

}

println(px+" "+idx+" "+ddx+" "+changeX);
stroke(px+(sin(py))/100%255,255,255);
point(px+sin(dist(width-px,py,px,py))/PI, py);

stroke(255,2);
line(mouseX,0,mouseX,height);
noFill();

rect(width,0,-pmouseX,height);


   
}