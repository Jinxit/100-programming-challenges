with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Calendar;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Calendar;

procedure Age_To_Seconds is

	function String_To_Time(Input : in String) return Time is
		Year : Year_Number;
		Month : Month_Number;
		Day : Day_Number;
	begin
	return Time_Of(Year => 1992, Month => 11, Day => 17, Seconds => 0.0);
	end String_To_Time;

	Input : String(1..8);
	Birthday : Time;
begin
	Get(Input);
	Skip_Line;
	Birthday := String_To_Time(Input);
end Age_To_Seconds;
