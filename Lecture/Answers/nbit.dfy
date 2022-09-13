
method test(x : int, y : int) returns (result : int) 
    //requires N >= 0
    ensures result == x + y;
{

    var c := 0;
    var i := 1

    result := 1;
    var i := 0;

    while i != N
       invariant i <= N;
       invariant result == powDef(x, i)
    {
        result := result * x;
        i := i + 1;
    }
}
