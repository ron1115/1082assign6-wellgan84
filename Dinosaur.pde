class Dinosaur extends Enemy{
	// Requirement #4: Complete Dinosaur Class

	final float TRIGGERED_SPEED_MULTIPLIER = 5;
  int moveDirection = 0;
  float speed = 1f;

  void display(){
    if(speed>0){
    image(dinosaur, x, y);
    } else if (speed <=0){
      pushMatrix();
      translate(x+w, y);
      scale(-1,1);
      image(dinosaur, -x, y);
      popMatrix();
    }
  }
  
  void update(){
    x += speed;
    if(x+SOIL_SIZE >= width || x <= 0){
      speed *= -1;
    }
    
    /*
    if(player.y == y){
      if( (player.x > x && player.moveDirection == RIGHT) || (player.x < x && player.moveDirection == LEFT) ){
        speed *= TRIGGERED_SPEED_MULTIPLIER;
      }
    }
    */
  }

  Dinosaur(float x, float y){
    super(x, y);
  }

	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
}
