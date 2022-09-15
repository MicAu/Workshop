// http://verifythus.cost-ic0701.org/common-example/arraymax-in-dafny

method max(a:array<int>) returns(max:int)
    requires a != null;
    ensures forall j :: j >= 0 && j < a.Length ==> max >= a[j]; //max is larger then anything in the array
    ensures a.Length > 0 ==> exists j :: j >= 0 && j < a.Length && max == a[j]; //max is an element in the array
{
    if (a.Length == 0)  { 
        max := 0;
        return;
    }

    max := a[0];
    var i := 1;

    while i < a.Length
        invariant i <= a.Length //i is bounded by the array
        //Invariant 1
        //Invariant 2
    {
        if a[i] > max
        {
            max := a[i];
        }
        i := i + 1;
    }
 
} 