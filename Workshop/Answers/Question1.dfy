method q1(n : int)
    requires n >= 0
{
    var i := 0;
    while i < n
      /*
      It is possible for i to exceed n at some point in the loop.
      Dafny only knows that when the loop ends, the loop condition 
      is false and that i is equal to or larger then 0 (the invariant) 
      which does not gurantee that i == n, rather that n <= i.
      */
      invariant 0 <= i
    {
        i := i + 1;
    }
    assert i == n;
}