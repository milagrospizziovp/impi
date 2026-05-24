void keyPressed(){
 if( key == ' ' ){ 
   
    if( estado == 0 ){
    estado = 1;
 
    }else if( estado == 1 ){
    estado = 2;
    
    }else if( estado == 2 ){
    estado = 3;
      
    }else if( estado == 3 ){
     estado = 4;
       
    }else if( estado == 4 ){
      estado = 5;
      
    }else if( estado == 5){
    estado = 0;
    
    }
  }
}
