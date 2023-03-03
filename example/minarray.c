int main()
{
    int array[6] =  {298, 19, -4444, 0, -176, 999};
    
    int min = array[0];
    
    for(int iter = 1; iter < 6; iter++)
    {
        if(array[iter] < min)
        {
            min = array[iter];
        }
    }
    return min;
}
