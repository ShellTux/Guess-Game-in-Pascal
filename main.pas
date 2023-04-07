program main;

var
	randomNumber: Integer;
	tries: Integer = 0;
	guess: Integer = -1;

begin
	Randomize;
	randomNumber := Random(100) + 1;

	while guess <> randomNumber do
	begin
		write('Guess: ');
		readln(guess);
		tries += 1;

		if guess > randomNumber then
			writeln('Lower');

		if guess < randomNumber then
			writeln('Higher');
	end;

	writeln;
	writeln('You won!');
	writeln('Took you ', tries, ' tries.');
end.
