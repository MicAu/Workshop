method q2(n : int)
    requires n >= 0
{
   var i := 0;
   while i < n
      invariant 0 <= i < n
   {
      i := i + 1;
   }
   assert i == n;
}