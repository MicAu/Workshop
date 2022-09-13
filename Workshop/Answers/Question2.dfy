method q2(n : int)
    requires n >= 0
{
    var i := 0;
    while i < n
        //When the invariant is i < n, on the final iteration where 
        //i is increased to n the invariant no longer holds
        invariant 0 <= i <= n //changed to <= n
    {
      i := i + 1;
    }
   assert i == n;
}