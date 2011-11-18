The usual thought process is to begin by using literal values (12, "duck", #ff0000)
and then to extract those to variables in a process called refactoring. So,

  size(200, 200);
  
might be refactored to

  int WORLD_SIZE = 200;
  size(WORLD_SIZE, WORLD_SIZE);
  
This may seem trivial in small applications, but as your applications grow in
size and complexity, these types of **ABSTRACTIONS** can be leveraged to
enable you to write **GENERALIZED** code.
