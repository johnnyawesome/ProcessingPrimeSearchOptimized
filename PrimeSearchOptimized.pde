int currentNum = 1;

void setup(){
}

void draw(){

  currentNum++;
  
   if (isPrime(currentNum) == true){
     println(currentNum + " IS PRIME!!!");
   }
   else{
     println(currentNum + " is not Prime");
   }
}

boolean isPrime(int num){
  
  if(num % 2 == 0) return false; //weeds out all even numbers - they're definitely not prime. :)
  else{
    for(int i = 3; i < num; i+=2) //Starts at 3 (First odd number) and jumps in steps of 2 (Because we don't need even divisors, we checked already if we can divide by 2)
    {
      if(num % i == 0) 
      {
        return false;
      }
    }
  }
  return true; 
}