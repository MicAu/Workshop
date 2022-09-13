
method power(x : int, N : int) returns (result : int) 
    requires N >= 0
    ensures result == powDef(x, N)
{
    result := 1;
    var i := 0;

    while i != N
       //Invariant 1
       //Invariant 2
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