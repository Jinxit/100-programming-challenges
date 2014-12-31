with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Calendar;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Calendar;

procedure Age_To_Seconds is

	function String_To_Time(Input : in String) return Time is
		Year : Year_Number;
		Month : Month_Number;
		Day : Day_Number;
		Index : Positive;
	begin
		-- Extract year, month and day, while skipping dashes
		Get(From => Input,
			Item => Year, Last => Index);
		Get(From => Input(Index + 2..Input'Last),
			Item => Month, Last => Index);
		Get(From => Input(Index + 2..Input'Last),
			Item => Day, Last => Index);
		return Time_Of(Year => Year, Month => Month, Day => Day, Seconds => 0.0);
	end String_To_Time;

	Input : String(1..10);
	Birthday : Time;
begin
	Put_Line("Please enter your birthday in the format YYYY-MM-DD.");
	Get(Input);
	Skip_Line;
	Birthday := String_To_Time(Input);
end Age_To_Seconds;
