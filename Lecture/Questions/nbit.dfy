
method test(x : int, y : int) returns (result : int) 
    //requires N >= 0
    ensures result == x + y;
{

    var c := 0;
    var i := 1

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
