//https://homepage.cs.uiowa.edu/~tinelli/classes/181/Fall21/Tools/Dafny/Examples/selection-sort.shtml

predicate sorted (a: array<int>)
	requires a != null
	reads a
{
	sorted'(a, a.Length)
}

predicate sorted' (a: array<int>, i: int)
	requires a != null
	requires 0 <= i <= a.Length
	reads a
{
	forall k :: 0 < k < i ==> a[k-1] <= a[k]
}


// Selection sort on arrays

method SelectionSort(a: array<int>) 
  modifies a
  ensures sorted(a)
{
  var n := 0;
  while (n != a.Length)
    invariant 0 <= n <= a.Length
    //Invariant 1
    //Invariant 2
  {
    var mindex := n;
    var m := n + 1;
    while (m != a.Length)
      invariant n <= m <= a.Length //m (search idx) between valid range
      //Invariant 1
      //Invariant 2
    {
      if (a[m] < a[mindex]) {
        mindex := m;
      }
      m := m + 1;
    }
    a[n], a[mindex] := a[mindex], a[n];
    n := n + 1;
  }
}