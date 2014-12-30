[
	Outputs "Guess:"
	First set the counter to 71, which is 'G', then copy it to a[1] to
	a[6]. Manually increase and decrease the values to match the correct
	symbols. a[7] is started from 0 because it's closer to 10, which is '\n'.
]
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
[>+>+>+>+>+>+<<<<<<-]
>
>++++++++++++++++++++++++++++++++++++++++++++++
>++++++++++++++++++++++++++++++
>++++++++++++++++++++++++++++++++++++++++++++
>++++++++++++++++++++++++++++++++++++++++++++
>-------------
>++++++++++

Go back to 1 and start a print chain
<<<<<<
[.>]

Set up print chains for "Up" and "Down"

Up starts from zeroes since it's so short
>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>++++++++++

Down starts the same way as Guess
>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
[>+>+>+>+<<<<-]
>
>+++++++++++++++++++++++++++++++++++++++++++
>+++++++++++++++++++++++++++++++++++++++++++++++++++
>++++++++++++++++++++++++++++++++++++++++++
>++++++++++
>>

[
	FIRST GUESS
	If it's below 4, say Up, otherwise say Down
]

Take in input as a single digit; subtract 48 to get it as an integer
,------------------------------------------------
Copy the input for future use
[->+>>>>>>>+<<<<<<<<]>[-<+>]<

Indicator variables are set to 0 and 1
>>>+<<
Subtract at most 4 times
++++
[
	Subtract from counter
	-
	Set indicator to zero
	>[-]<
	If input is not zero
	<
	[
		Start by moving the input to temp
		->>>>+<<<<
		Set first indicator to 1
		>>[-]+<<
	]
	Move back from temp to input
	>>>>[-<<<<+>>>>]<<<<
	If indicator is 0
	>>-
	[
		Set counter to 0
		<[-]>
		Move indicator to temp
		>>[-]+<<
		Set indicator to 0
		[-]
	]
	Move back from temp to indicator
	>>[-<<+>>]<<
	Go back and decrease input
	<<-
	Go forward to counter to keep the loop going
	>
]
First indicator should now be 1 if it's below 4
Print 'Up'
>[
	Move back to the word location
	<<<<<<<<<<<<
	Print chain
	[.>]
	Set indicator to 0 again
	>>>>>>>>>-
	Set other indicator to 0 as well
	>[-]<
	Set UpInd to 1
	>>>+<<<
]
Else print 'Down'
>[
	Move back to the word location
	<<<<<<<<<
	Print chain
	[.>]
	Set indicator to 0 again
	>>>>-
	Set DnInd to 1
	>>>+<<<
]

[
	SECOND GUESS
	If the first guess was 4 or below, we subtract 4 from the second guess.
	We then run the same code as above, but with 2 as the split point.
]

Print 'Guess:'
<<<<<<<<<<<<<<<<<<<<<[.>]>>>>>>>>>>>>>>>>>>

Take in input as a single digit; subtract 48 to get it as an integer
Double read to get rid of the previous newline; this is an interactive program
,,------------------------------------------------

Go back and look at UpInd
<<
If we're on the lower half of the range
[
	Calculate input2 minus input1 minus 1
	>>>[-<->]<-
	If that is 1
	[
		Change direction; print Down
		<<<<<<<<<<<<<[.>]>>>>>>>>
		Set it back to 0 to get out of here
		[-]
		If we're here; zero out UpInd early
		<<[-]>>
	]
	Otherwise use UpInd as an indicator that we should print Up again
	<<
	[
		<<<<<<<<<<<<<<<[.>]>>>>>>>>>>>>
		[-]
	]
	Set UpInd to 0
	[-]
]
Else if we're on the lower half of the range
>
[
	Calculate input1 minus input2 minus 1
	>[->-<]>-
	If that is 1
	[
		Change direction; print Up
		<<<<<<<<<<<<<<<<<<[.>]>>>>>>>>>>>>>>>
		Set it back to 0 to get out of here
		[-]
		If we're here; zero out DnInd early
		<<[-]>>
	]
	Otherwise use DnInd as an indicator that we should print Down again
	<<
	[
		<<<<<<<<<<<<[.>]>>>>>>>
		[-]
	]
	Set DnInd to 0
	[-]
]

[
	YOU LOSE
	Set up the print chain for the final message. This is of course a game
	you can never win, so no need for a win message.
]

First character is Y
>>>>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++

Move it to the other positions; except symbols
[>+>+>+>>+>+>+>+<<<<<<<<-]

Then set the individual letters
>>++++++++++++++++++++++
>++++++++++++++++++++++++++++
>++++++++++++++++++++++++++++++++
>-------------
>++++++++++++++++++++++
>++++++++++++++++++++++++++
>++++++++++++
>+++++++++++++++++++++++++++++++++
>++++++++++

Go back and start the print chain
<<<<<<<<<[.>]
