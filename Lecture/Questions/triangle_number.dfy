method TriangleNumber(N: int) returns (t: int)
    requires N >= 0
    ensures t == N * (N + 1) / 2
{
    t := 0;
    var n := 0;
    while n < N
        //Invariant 1
        //Invariant 2
    {
        n:= n + 1;
        t := t + n;
    }
}