int main(int number1, int number2)
{
    while (number1 && number2)
    {
        if(number1 * number2 == 0)
        {
            return number1 + number2;
        }
        
        if(number1 > number2)
        {
            number1 %= number2;
        }else{
            number2 %= number1;
        }
    }
    return number1 + number2;
}
