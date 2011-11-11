    int i; 
    i = 0;
  
    while ( i < 100 ) {
      println("");
      i = i + 1;
    
      if (i % 3 == 0) {
        print("fizz ");
      }

      if (i % 5 == 0) {
        print("buzz ");
      }

      if ( (i % 3 != 0) && (i % 5 != 0) ) {
        print(i);
      }  
    
    }

