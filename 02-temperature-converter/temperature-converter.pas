program TemperatureConverter;

Label Start;

Function CelciusToFahrenheit(Temperature:Real) : Real;
Begin
	CelciusToFahrenheit := Temperature * 1.8 + 32
End;

Function FahrenheitToCelcius(Temperature:Real) : Real;
Begin
	FahrenheitToCelcius := (Temperature - 32) / 1.8
End;

Var
Source		: Char;
Temperature	: Real;

Begin
	Start:writeln('What is the source temperature unit? C/F');
	readln(Source);	
	writeln('What is the temperature?');
	readln(Temperature);

	Case (Source) of
		'C':	Begin
					Temperature := CelciusToFahrenheit(Temperature);
					write('That is equal to ');
					write(Temperature:1:2);
					writeln(' degrees Fahrenheit.');
				End;
		'F':	Begin
					Temperature := FahrenheitToCelcius(Temperature);
					write('That is equal to ');
					write(Temperature:1:2);
					writeln(' degrees Celcius.');
				End;
		Else
		Begin
			writeln('Invalid input, please try again.');
			Goto Start;
		End;
	End;
End.
