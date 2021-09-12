#!/usr/bin/php
<?php
function getFib($fibNumber)
{
    if($fibNumber == 1 || $fibNumber == 2)
    {
        return 1;
    }
    return getFib($fibNumber - 2) + getFib($fibNumber - 1);
}

$result = getFib($argv[1]);
echo "$result\n";
?>