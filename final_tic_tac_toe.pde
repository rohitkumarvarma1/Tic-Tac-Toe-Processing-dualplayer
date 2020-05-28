PFont fancy;
int[] spots = new int[9];
boolean chance = true;
boolean game  =true;
int tiecounter = 0;
int p1=0;
int p2=0;
void setup(){
  size(1800,1200);
  fancy = loadFont("ComicSansMS-Bold-48.vlw");
  background(240,180,100);

  
}

void draw(){
  drawchoice();


  if(gameover()==true){
    
    printwinner();    
  }
  
  else{
    arena();
    drawchoice();
    printwinner();
    if(game==true){
      
      
      if(chance==true){
        player1();
      }
      else if(chance==false ){
        player2();
      }
    
    }
  }
  if(tiecounter==9 && game==true && p1==0 && p2==0){
    
    println("Tie");
    fill(0);
    textFont(fancy);
    textSize(100);
    text("Tie :)",1400,400);
  }
     

}

void player1(){
  if(mousePressed==true && mouseX>0 && mouseX<400 && mouseY>0 && mouseY<400 && spots[0]==0){
    spots[0]=1;
    tiecounter++;
    chance = false;
    draw();
  }
  if(mousePressed==true && mouseX>400 && mouseX<800 && mouseY>0 && mouseY<400 && spots[1]==0){
    spots[1]=1;
    tiecounter++;
    chance = false;
    draw();
  }
  if(mousePressed==true && mouseX>800 && mouseX<1200 && mouseY>0 && mouseY<400 && spots[2]==0){
    spots[2]=1;
    tiecounter++;
    chance = false;
    draw();
  }
  if(mousePressed==true && mouseX>0 && mouseX<400 && mouseY>400 && mouseY<800 && spots[3]==0){
    spots[3]=1;
    tiecounter++;
    chance = false;
    draw();
  }
  
  if(mousePressed==true && mouseX>400 && mouseX<800 && mouseY>400 && mouseY<800 && spots[4]==0){
    spots[4]=1;
    tiecounter++;
    chance = false;
    draw();
  }
  if(mousePressed==true && mouseX>800 && mouseX<1200 && mouseY>400 && mouseY<800 && spots[5]==0){
    spots[5]=1;
    tiecounter++;
    chance = false;
    draw();
    
  }
  if(mousePressed==true && mouseX>0 && mouseX<400 && mouseY>800 && mouseY<1200 && spots[6]==0){
    spots[6]=1;
    tiecounter++;
    chance = false;
    draw();
  }
  if(mousePressed==true && mouseX>400 && mouseX<800 && mouseY>800 && mouseY<1200 && spots[7]==0){
    spots[7]=1;
    tiecounter++;
    chance = false;
    draw();
  }
  if(mousePressed==true && mouseX>800 && mouseX<1200 && mouseY>800 && mouseY<1200 && spots[8]==0){
    spots[8]=1;
    tiecounter++;
    chance = false;
    draw();
  }
 
}
void player2(){
  if(mousePressed==true && mouseX>0 && mouseX<400 && mouseY>0 && mouseY<400 && spots[0]==0){
    spots[0]=2;
    tiecounter++;
    chance = true;
    draw();
  }
  if(mousePressed==true && mouseX>400 && mouseX<800 && mouseY>0 && mouseY<400 && spots[1]==0){
    spots[1]=2;
    tiecounter++;
    chance = true;
    draw();
  }
  if(mousePressed==true && mouseX>800 && mouseX<1200 && mouseY>0 && mouseY<400 && spots[2]==0){
    spots[2]=2;
    tiecounter++;
    chance = true;
    draw();
  }
  if(mousePressed==true && mouseX>0 && mouseX<400 && mouseY>400 && mouseY<800 && spots[3]==0){
    spots[3]=2;
    tiecounter++;
    chance = true;
    draw();
  }
  
  if(mousePressed==true && mouseX>400 && mouseX<800 && mouseY>400 && mouseY<800 && spots[4]==0){
    spots[4]=2;
    tiecounter++;
    chance = true;
    draw();
  }
  if(mousePressed==true && mouseX>800 && mouseX<1200 && mouseY>400 && mouseY<800 && spots[5]==0){
    spots[5]=2;
    tiecounter++;
    chance = true;
    draw();
    
  }
  if(mousePressed==true && mouseX>0 && mouseX<400 && mouseY>800 && mouseY<1200 && spots[6]==0){
    spots[6]=2;
    tiecounter++;
    chance = true;
    draw();
  }
  if(mousePressed==true && mouseX>400 && mouseX<800 && mouseY>800 && mouseY<1200 && spots[7]==0){
    spots[7]=2;
    tiecounter++;
    chance = true;
    draw();
  }
  if(mousePressed==true && mouseX>800 && mouseX<1200 && mouseY>800 && mouseY<1200 && spots[8]==0){
    spots[8]=2;
    tiecounter++;
    chance = true;
    draw();
  }
}

void arena(){
  fill(120,22,33);
  textFont(fancy);
  textSize(60);
  text("Tic-Tac-Toe",1300,100);
  stroke(0);
  strokeWeight(5);
  fill(201,100,120);
  rect(0,0,1200,1200);
  strokeWeight(5);
  for(int i=0;i<=800;i = i+400){
    line(i,0,i,1200);
    line(0,i,1200,i);
  }
}

boolean gameover(){
  int count = 0;
  
  for(int i=0;i<9;i++){
    if(spots[i]!=0){
      count = count+1;
    }
  }
  if(count==9){
    return true;
  }
  else{
    return false;
  }
  
}

void printwinner(){
  if(spots[0]==spots[1] && spots[0]==spots[2] && spots[1]==spots[2]){
    if(spots[0]==1){
      println("Winner is player 1");
      p1=1;
      textFont(fancy);
      textSize(50);
      text("Player O won the game!!",1225,400);
      game=false;
    }
    else if(spots[0]==2){
      println("Winner is player 2");
      p2=1;
      textFont(fancy);
      textSize(50);
      text("Player X won the game!!",1225,400);
      game=false;
    }
  }
  if(spots[0]==spots[3] && spots[0]==spots[6] && spots[3]==spots[6]){
    if(spots[0]==1){
      println("Winner is player 1");
      p1=1;
      textFont(fancy);
      textSize(50);
      text("Player O won the game!!",1225,400);
      game=false;
    }
    else if(spots[0]==2){
      println("Winner is player 2");
      p2=1;
      textFont(fancy);
      textSize(50);
      text("Player X won the game!!",1225,400);
      game=false;
    }
  }
  if(spots[0]==spots[4] && spots[0]==spots[8] && spots[4]==spots[8]){
    if(spots[0]==1){
      println("Winner is player 1");
      p1=1;
      textFont(fancy);
      textSize(50);
      text("Player O won the game!!",1225,400);
      game=false;
    }
    else if(spots[0]==2){
      println("Winner is player 2");
      p2=1;
      textFont(fancy);
      textSize(50);
      text("Player X won the game!!",1225,400);
      game=false;
    }
  }
  if(spots[2]==spots[4] && spots[2]==spots[6] && spots[4]==spots[6]){
    if(spots[2]==1){
      println("Winner is player 1");
      p1=1;
      textFont(fancy);
      textSize(50);
      text("Player O won the game!!",1225,400);
      game=false;
    }
    else if(spots[2]==2){
      println("Winner is player 2");
      p2=1;
      textFont(fancy);
      textSize(50);
      text("Player X won the game!!",1225,400);
      game=false;
    }
  }
  if(spots[3]==spots[4] && spots[3]==spots[5] && spots[4]==spots[5]){
    if(spots[3]==1){
      println("Winner is player 1");
      p1=1;
      textFont(fancy);
      textSize(50);
      text("Player O won the game!!",1225,400);
      game=false;
    }
    else if(spots[3]==2){
      println("Winner is player 2");
      p2=1;
      textFont(fancy);
      textSize(50);
      text("Player X won the game!!",1225,400);
      game=false;
    }
  }
  if(spots[6]==spots[7] && spots[6]==spots[8] && spots[7]==spots[8]){
    if(spots[6]==1){
      println("Winner is player 1");
      p1=1;
      textFont(fancy);
      textSize(50);
      text("Player O won the game!!",1225,400);
      game=false;
    }
    else if(spots[6]==2){
      println("Winner is player 2");
      p2=1;
      textFont(fancy);
      textSize(50);
      text("Player X won the game!!",1225,400);
      game=false;
    }
  }
  if(spots[1]==spots[4] && spots[1]==spots[7] && spots[4]==spots[7]){
    if(spots[1]==1){
      println("Winner is player 1");
      p2=1;
      textFont(fancy);
      textSize(50);
      text("Player O won the game!!",1225,400);
      game=false;
    }
    else if(spots[1]==2){
      println("Winner is player 2");
      p2=1;
      textFont(fancy);
      textSize(50);
      text("Player X won the game!!",1225,400);
      game=false;
    }
  }
  if(spots[2]==spots[5] && spots[2]==spots[8] && spots[5]==spots[8]){
    if(spots[2]==1){
      println("Winner is player 1");
      p1=1;
      textFont(fancy);
      textSize(50);
      text("Player O won the game!!",1225,400);
      game=false;
    }
    else if(spots[2]==2){
      println("Winner is player 2");
      p2=1;
      textFont(fancy);
      textSize(50);
      text("Player X won the game!!",1225,400);
      game=false;
    }
  }
}

void drawchoice(){
  if(spots[0]==0){
  }
  if(spots[0]==1){
    drawcircle(200,200);
  }
  if(spots[0]==2){
    drawcross(200,200);
  }
  
  
  if(spots[1]==0){
  }
  if(spots[1]==1){
    drawcircle(600,200);
  }
  if(spots[1]==2){
    drawcross(600,200);
  }
  
  
  if(spots[2]==0){
  }
  if(spots[2]==1){
    drawcircle(1000,200);
  }
  if(spots[2]==2){
    drawcross(1000,200);
  }
  
  
  if(spots[3]==0){
  }
  if(spots[3]==1){
    drawcircle(200,600);
  }
  if(spots[3]==2){
    drawcross(200,600);
  }
  
  
  if(spots[4]==0){
  }
  if(spots[4]==1){
    drawcircle(600,600);
  }
  if(spots[4]==2){
    drawcross(600,600);
  }
  
  
  if(spots[5]==0){
  }
  if(spots[5]==1){
    drawcircle(1000,600);
  }
  if(spots[5]==2){
    drawcross(1000,600);
  }
  
  
  if(spots[6]==0){
  }
  if(spots[6]==1){
    drawcircle(200,1000);
  }
  if(spots[6]==2){
    drawcross(200,1000);
  }
  
  
  if(spots[7]==0){
  }
  if(spots[7]==1){
    drawcircle(600,1000);
  }
  if(spots[7]==2){
    drawcross(600,1000);
  }
  
  
  if(spots[8]==0){
  }
  if(spots[8]==1){
    drawcircle(1000,1000);
  }
  if(spots[8]==2){
    drawcross(1000,1000);
  }

}

void drawcircle(int x,int y){
  fill(120,160,80);
  circle(x,y,200);
}

void drawcross(int x,int y){
  stroke(120,60,100);
  strokeWeight(20);
  line(x,y,x+100,y+100);
  line(x,y,x-100,y-100);
  line(x,y,x+100,y-100);
  line(x,y,x-100,y+100);
  
}
