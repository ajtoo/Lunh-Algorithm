import std.stdio;
import std.string;

void main() 
{
	writeln("Lunh Algorithm for credit card number verification...");

	//take in string
	string input = stdin.readln();		//reads with \n
	input = chomp(input);

	int[] cardNum = new int[input.length];

	//distribute into numerical array
	foreach(i; 0 .. input.length)
	{
		//translate and store value in array
		cardNum[i] = cast(int)input[i] - 48;
	}

	//double every second number starting from the right end
	for(int i = (cast(int)cardNum.length-2); i > 0; i = i-2)
	{
		write("doubling...	", cardNum[i]);		//[DEBUG]
		cardNum[i] = cardNum[i] * 2;
		write("-->	", cardNum[i], "\n");		//[DEBUG]
		//check if sum is greater than 9
		if(cardNum[i] > 9) 
		{
			cardNum[i] = 1 + cardNum[i] % 10;	//sum the digits	
		}
		write("\t@", i, " ", cardNum[i], "\n");
	}

	writeln(cardNum);		//[DEBUG]

	//sum the array
	int sum = 0;

	foreach(int item; cardNum)
	{
		sum += item;
	}

	writeln("Sum: ", sum);		//[DEBUG]

	//if mod 10 == 0, number is valid
	if(sum % 10 == 0)
	{
		writeln("Number Verified");
	}
}