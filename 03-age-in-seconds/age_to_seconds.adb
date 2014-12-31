with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Calendar, Ada.Calendar.Arithmetic;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Calendar, Ada.Calendar.Arithmetic;

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
		return Time_Of(Year => Year, Month => Month, Day => Day,
			Seconds => 0.0);
	end String_To_Time;

	Input : String(1..10);
	Birthday, Now : Time;
	Diff_Days : Day_Count;
	Diff_Seconds : Duration;
	Diff_LeapSeconds : Leap_Seconds_Count;
	Total_Seconds : Integer;
begin
	Put_Line("Please enter your birthday in the format YYYY-MM-DD.");
	Get(Input);
	Skip_Line;
	Birthday := String_To_Time(Input);
	Now := Clock;
	Difference(Now, Birthday, Diff_Days, Diff_Seconds, Diff_LeapSeconds);

	-- This makes some really dumb assumptions like 30 days per month,
	-- but it's ok for our purposes.
	Total_Seconds :=  Integer(Diff_Days * 24 * 60 * 60)
					+ Integer(Diff_Seconds)
					+ Integer(Diff_LeapSeconds);
	Put("It has been roughly ");
	Put(Total_Seconds);
	Put(" seconds since you were born.");
end Age_To_Seconds;
