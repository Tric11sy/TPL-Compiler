int find_str(char str1[], char str2[]) 
{
    int i, j, k;
    int index = 0;

    for(i = 0; str1[i] != '\0'; i++) {
       for(j = i, k = 0; str2[k] != '\0' && str1[j] == str2[k]; j++, k++)
          ;
       if(k > 0 && str2[k] =='\0')
       {
          index = i;
          break;
       }
    }
    return index;
}
