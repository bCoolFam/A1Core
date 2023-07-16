int canvasX = 600;
int canvasY = 500;


void setup() { //setup sets canvas size and bgcolor to white
 background(255,255,255);
 size(600, 500);
}


void draw() { //draw method for different elements


//red rectangle with yellow diamond
  fill(255,0,0);
 rect(0,0, canvasX/3 , canvasY); //end red bg
 
 //yellow diamond
 fill(247, 255, 0);
 beginShape();
 vertex(100, 125);
 vertex(0, 250);
 vertex(100,375);
 vertex(200, 250);
 endShape(CLOSE);//end yellow diamond
 
 //green circle
 fill(66,245,93);
 ellipse(canvasX/2,canvasY/2, canvasX/3, canvasY);
 
 //3x4 grid of squares using drawSquareGrid method
 drawSquareGrid(4,3,50);
 
 //draw dark blue triangle bottom right 
 fill(0,24,181);
 beginShape();
 vertex(600, 250);
 vertex(500, 480);
 vertex(400, 400);
 endShape(CLOSE);
 
 
}

void drawSquareGrid(int rows, int cols, int sqSize){ //method to draw grid of squares
  for(int row = 0; row < rows; row++){
    for(int col = 0 ; col < cols; col++){
      int x = 400 + (col * sqSize);
      int y = row * sqSize;
        if(col > 0){ x = 400 + (col * sqSize) + (col*15);} //iff not in first column, then add gap
        if(row > 0){ y = row * sqSize + (row*15);} //iff not in first row, then add gap
      drawSquare(x, y, sqSize);
    }
}
}

void drawSquare(int x , int y, int size){  //helper method for drawing squares in grid
  fill(112,243,255);
  rect(x, y, size,size);
}
