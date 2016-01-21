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
  String coWord = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if (Character.isLetter(word.charAt(i)) ) // checks for nonalpha (including spaces)
      coWord += word.charAt(i);
  }  

  // String nuWord = coWord.toLowerCase(); // converts word to lowercase. no need. checked below.

  int j = coWord.length()-1;
  for (int i = 0; i < coWord.length(); i++) // checks the word fwd and bwd
  {
    if(coWord.toLowerCase().charAt(i) == coWord.toLowerCase().charAt(j)) // converts and checks lowercases
      j--;
    if(j == 0)
      return true;
  }
  return false;
}

