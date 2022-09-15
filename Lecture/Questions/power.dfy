
method power(x : int, N : int) returns (result : int) 
    requires N >= 1
    ensures result == powDef(x, N)
{
    result := 1;
    var i := 0;

    while i != N
       invariant result == powDef(x, i)
       invariant 0 <= i <= N;
       decreases N - i
    {
        result := result * x;
        i := i + 1;
    }
}


//Definition of power function
function method powDef(x:int, N:nat) : int
{
	if (N==0) then 1 else x * powDef(x, N-1)
}

