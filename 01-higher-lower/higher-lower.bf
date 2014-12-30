[	Outputs "Guess:"
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
		-
	]
	Move back from temp to indicator
	>>[-<<+>>]<<
	Go back and decrease input
	<<-
	Go forward to counter to keep the loop going
	>
]
First indicator should now be 1 if it's above 4
Print 'Up'
>[
	Move back to the word location
	<<<<<<<<<<<<
	Print chain
	[.>]
	Set indicator to 0 again
	>>>>>>>>>>>>-
	Set other indicator to 0 as well
	>[-]<
]
Else print 'Down'
>[
	Move back to the word location
	<<<<<<<<<
	Print chain
	[.>]
	Set indicator to 0 again
	>>>>>>>>>-
]
