float m=0;
int s,t,j;
int max=1;
int count[]={0,0,0,0};
void setup()
{
  background(255);
  size(260,330);
  /* @pjs preload="paper.jpg,rock.jpg,scissor.jpg"; */
  /* @pjs font="MicrosoftYaHei-48.vlw"; */
    PImage b;

    b = loadImage("rock.jpg");

    image(b, 0, 0);
    PImage c;

    c = loadImage("scissor.jpg");

    image(c, 0,100);
    PImage d;

    d = loadImage("paper.jpg");

    image(d, 0, 220);
    
}   

void mouseClicked(){
  if (m==0) {m=random(1,3);}
  s=int(m);
  t=0;
  if (0<mouseX && mouseX<145 && 0<mouseY && mouseY<83){
     t=1;
  }  
        
  if (0<mouseX && mouseX<143 && 100<mouseY && mouseY<160){
     t=2;
  }     
  
  if (0<mouseX && mouseX<143 && 220<mouseY && mouseY<281){
      t=3;  
  }  
      
   if (mouseX>145){   
     background(255);
     size(260,330);
     /* @pjs preload="paper.jpg,rock.jpg,scissor.jpg"; */

    PImage b;

    b = loadImage("rock.jpg");

    image(b, 0, 0);
    PImage c;

    c = loadImage("scissor.jpg");

    image(c, 0,100);
    PImage d;

    d = loadImage("paper.jpg");

    image(d, 0, 220);
   }   
   count[1]=count[2];
   count[2]=count[3];
   count[3]=t;
   if (count[1]!=0){
     m=count[1]+1;
       if (m>3){
         m=m-3;
       }
     }  
}

void draw()
{
     if  ((s==1 && t==1) || (s==2 && t==2) || (s==3 && t==3)){
        PFont font;
        font = loadFont("MicrosoftYaHei-48.vlw"); 
        textFont(font); 
        fill(0,0,0);
        text("tie", 15,320); 
   }
     if  ((s==1 && t==2) || (s==2 && t==3) || (s==3 && t==1)){
        PFont font;
        font = loadFont("MicrosoftYaHei-48.vlw"); 
        textFont(font); 
        fill(0,0,0);
        text("you lose", 15,320); 
     }
     if  ((s==1 && t==3) || (s==2 && t==1) || (s==3 && t==2)){
        PFont font;
        font = loadFont("MicrosoftYaHei-48.vlw"); 
        textFont(font); 
        fill(0,0,0);
        text("you win", 15,320);   
     } 
     t=0;                      
}
