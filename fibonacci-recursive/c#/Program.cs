using System;

namespace FibonacciRecursive
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(getFib(ulong.Parse(args[0])));
        }

        private static ulong getFib(ulong fibNumber)
        {
            if(fibNumber == 1 || fibNumber == 2)
            {
                return 1;
            }
            return getFib(fibNumber - 2) + getFib(fibNumber - 1);
        }
    }
}
