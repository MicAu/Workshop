method q3(n: nat)
{
	var i: int := 0;
	while i != n  // Change this. What happens?
	// The assertion still holds, since we have that i <= n and i == n, so
	// Dafny can conclude that i == n.
		invariant 0 <= i <= n
	{
		i := i + 1;
	}
	assert i == n;
}