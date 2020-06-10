class Cabbage extends Item {
	// Requirement #1: Complete Cabbage Class
  Cabbage(float x, float y){
    super(x, y);
  }
	
	//Code for Reference:
  void display(){
      if(isAlive == true){
      image(cabbage, x, y);
    }
			// Display Cabbage
}
    void checkCollision(Player player){
			// Check collision with player
			if(isAlive == true && player.health < player.PLAYER_MAX_HEALTH
			&& isHit(x, y, SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){
        isAlive = false;
				player.health ++;
				x = y = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen

			}

		}
    void update(){
    if(x >= width) x = -w;
  }
	
}
