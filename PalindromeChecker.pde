public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String coWord = new String();
  for(int i = 0; i < word.length(); i++) // checks specialties
  {
    if (word.charAt(i) != ' ' || // checks for spaces
        Character.isLetter(word.charAt(i)) || // checks for special characters
        /* TO BE CONTINUED */)
      coWord += word.charAt(i);
  }  

  int j = coWord.length()-1;
  for (int i = 0; i < coWord.length(); i++) // checks the word fwd and bwd
  {
    if(coWord.charAt(i) == coWord.charAt(j))
      j--;
    if(j == 0)
      return true;
  }
  return false;

  /*
  public String noSpaces(String sWord){
  String newString = new String();
  for(int i = 0; i < sWord.length(); i++)
  {
    if (sWord.charAt(i) != ' ')
      newString += sWord.charAt(i);
  }
  return newString;
}
  */
}

