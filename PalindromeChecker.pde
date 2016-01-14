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
  String tsuchainz = new String();
  word = noSpaces(word).toLowerCase();
  for(int i=word.length()-1;i>=0;i--) {
    tsuchainz = tsuchainz + word.charAt(i);
    System.out.println(tsuchainz);
  }
  if (word.equals(tsuchainz)) {
    return true;
  } else {
    return false;
  }
}
public String noSpaces(String sWord){
  String output = new String();
  for (int i=0; i<sWord.length(); i++) {
    if (sWord.substring(i,i+1).equals(" ")||sWord.substring(i,i+1).equals("!")||sWord.substring(i,i+1).equals(",")||sWord.substring(i,i+1).equals("'")) {
    } else {
      output = output + sWord.charAt(i);
    }
  }
  return output;
}
