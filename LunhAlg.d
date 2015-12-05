import std.stdio;
import std.string;

void main() 
{
	writeln("Lunh Algorithm for credit card number verification...");

	//take in string
	string input = stdin.readln();		//reads with \n
	input = chomp(input);

	//check if appropriate length
	if(input.length != 16)
	{
		//ERROR (number is too long to be a card number)
		return;
	}

	int[] cardNum = new int[16];
	//distribute into numerical array
	foreach(i; 0 .. input.length)
	{
		//translate and store value in array
		cardNum[i] = cast(int)input[i] - 48;
	}

	//double every second number
	
	//if the value is > 10 sum it's component digits
	//sum the array
	//if mod 10 == 0, number is valid
}