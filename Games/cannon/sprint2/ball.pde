class ball{
  ball(){ 
    miss = 0;
    dt = 1./frameRate*3; // fast forward
    g = -10.0; // gravitational acceleration
  }
  float x,y,vx,vy,dt,g,miss;
  boolean alive;
  void move(){ // parabolic motion
    x += vx*dt; 
    vy += g*dt;     y -= vy*dt;
  }
  void display(){
    fill(0);       circle(x,y,10);
    fill(255);     circle(x-3,y-3,2);
  }
  void check(cannon c){  // hit or miss
    miss = 0.0;
    if(dist(x,y,c.x,c.y)<40){ // hit
      alive = false;   c.alive = false;    
    } else if(y>c.y) {        // mise
      alive = false;   miss = x - c.x;
    }
  }
}
