#include <iostream>
#include <sstream>

unsigned long long getFib(unsigned long long fibNumber)
{
    if(fibNumber == 1 || fibNumber == 2)
    {
        return 1;
    }
    return getFib(fibNumber - 2) + getFib(fibNumber - 1);
}

int main(int argc, char* argv[])
{
    std::istringstream iss (argv[1]);
    unsigned long long fibNumber;
    iss >> fibNumber;
    std::cout << getFib(fibNumber) << std::endl;
}

