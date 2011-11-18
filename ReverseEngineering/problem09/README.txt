There is a hierarchy of data representation:

 * literals
 * single valued variables (scalars)
 * collections (arrays, hashes)
 * collections of collections (multi-dimensional arrays)
 * classes (an encapsulation of several variables and/or collections and/or
   collections of collections which all relate to the same type of entity)
   
LITERAL
  4
  "Hello"
  #ff0000
  
VARIABLE
  int numberOfLights = 4;
  String greeting = "Hello";
  color c = #ff0000;
  
COLLECTIONS
  int[] ages = {12, 64, 13, 44, 33, 91, 17};
  String[] greetings = {"Hello", "Hi", "Yo", "Hey there"};
  color[] pureColors = {#ff0000, #00ff00, #0000ff};
  
  
More on the others later...