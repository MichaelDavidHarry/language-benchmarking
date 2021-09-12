public class FibonacciRecursive
{
    public static void main(String[] args)
    {
        System.out.println(getFib(Long.parseLong(args[0])));
    }

    private static long getFib(long fibNumber)
    {
        if(fibNumber == 1 || fibNumber == 2)
        {
            return 1;
        }
        return getFib(fibNumber - 2) + getFib(fibNumber - 1);
    }
}