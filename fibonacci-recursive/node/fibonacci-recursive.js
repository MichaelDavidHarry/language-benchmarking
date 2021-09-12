#!/usr/bin/node

function getFib(fibNumber)
{
    if(fibNumber == 1 || fibNumber == 2)
    {
        return 1;
    }
    return getFib(fibNumber - 2) + getFib(fibNumber - 1);
}

console.log(getFib(process.argv[2]));