program Main;

var
	randomNumber: Integer;
	tries: Integer = 0;
	guess: Integer = -1;

begin
	Randomize;
	randomNumber := Random(100) + 1;

	while guess <> randomNumber do
	begin
		Write('Guess: ');
		ReadLn(guess);
		tries += 1;

		if guess > randomNumber then
			WriteLn('Lower');

		if guess < randomNumber then
			WriteLn('Higher');
	end;

	WriteLn;
	WriteLn('You won!');
	WriteLn('Took you ', tries, ' tries.');
end.
