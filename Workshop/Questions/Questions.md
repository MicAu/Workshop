# Question 1
The below code attempts to loop from 0 up to n using the variable i

   var i: int := 0;
   while i < n
      invariant 0 <= i
   {
      i := i + 1;
   }
   assert i == n;

The invariant provided is not sufficient to prove loop correctness. Why is it not sufficient? Give one example where the invariant would not hold. (Test out the program in a dafny file!)

# Question 2
Using the same program from Question 1, the invariant has been modified but is still not sufficient. Why is the invariant specified not sufficient? Can you suggest a fix?

   var i := 0;
   while i < n
      invariant 0 <= i < n
   {
      i := i + 1;
   }
   assert i == n;

# Question 3
Using the solution for Question 2, if the loop condition was changed from i < n to i != n, would the assertion after the loop still verify? Why or why not? 

# Question 4
The below program is an extension from the solution of Question 2/3. 

   function fib(n: nat): nat
   {
      if n == 0 then 0 else
      if n == 1 then 1 else
      fib(n - 1) + fib(n - 2)
   }

   method ComputeFib(n: nat) returns (b: nat)
      ensures b == fib(n);
   {
      if (n == 0) { return 0; }
      var i := 1;
      var a := 0;
      b := 1;
      while (i < n)
         invariant 0 < i <= n;
         //Missing invariant
         //Missing Invariant
      {
         a, b := b, a + b;
         i := i + 1;
      }
   }

This program attempts to compute the fibonacci number of n into the variable b by keeping track of the previous number in a.
Fib(n) = Fib(n - 1) + Fib(n - 2)

Two invariants are missing which relate to the postcondition and variables a and b. Add these two invariants. 
HINT: Each invariant will relate to the individual variables a and b, and may use the fib(n) function defined above.

# Question 5
The following code attempts to reverse a list of integers. The achieve this, the program swaps the first value with the last value and continues in this fashion until it reaches the middle
e.g.
[1, 2, 3, 4, 5, 6] - i = 0, swaps 1 and 6
[6, 5, 3, 4, 2, 1] - i = 1, swaps 2 and 5
[6, 5, 4, 3, 2, 1] - i = 2, swaps 3 and 4

method rev(a : array<int>)
    requires a != null;
    modifies a;
    ensures forall k :: 0 <= k < a.Length ==> a[k] == old(a[(a.Length - 1) - k]);
{
    var i := 0;
    while (i < a.Length - 1 - i)
        invariant 0 <= i <= a.Length/2;
        //Invariant here
        //Invariant here
    {
        a[i], a[a.Length - 1 - i] := a[a.Length - 1 - i], a[i];
        i := i + 1;
    }
}

Two invariants are missing related to the values that have been swapped and the values that have yet to be swapped. Find the appropriate invariants to prove the loop is correct.             

# Question 6
The following code returns an array of size n containing the values 0 up to and excluding n
e.g. arrayUpToN(3) returns [0, 1, 2]

method arrayUpToN(n: int) returns (a: array<int>)
    requires n >= 0
    ensures a.Length == n
    ensures forall j :: 0 < j < n ==> a[j] >= 0
    ensures forall j, k : int :: 0 <= j <= k < n ==> a[j] <= a[k]
{
    var i := 0;
    a := new int[n];
    while i < n
        invariant 0 <= i <= n
        invariant forall k :: 0 <= k < i ==> a[k] >= 0
        invariant forall k :: 0 <= k < i ==> a[k] == k
        invariant forall j, k :: 0 <= j <= k < i ==> a[j] <= a[k]
    {
        a[i] := i;
        i := i + 1;
    }
}

4 invariants are provided in the loop. 
Give a short explanation of what each of the three invariants attempt to show.
1. 
2.
3.
4.

Which invariants are not needed?