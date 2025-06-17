<?php
class MathOperations
{
    public function addNumbers(int $a, int $b): int
    {
        return $a + $b;
    }

    public function divideNumbers(int $a, int $b): float
    {
        if ($b === 0) {
            throw new InvalidArgumentException('Cannot divide by zero.');
        }

        return $a / $b;
    }

    public function squareNumber(int $a): int
    {
        return $a * $a;
    }
}