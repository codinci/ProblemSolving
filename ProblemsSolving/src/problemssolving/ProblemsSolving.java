 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package problemssolving;



/**
 *
 * @author User
 */
public class ProblemsSolving {

    /**
     * @param args the command line arguments
     */
    static void reverseString(char ch[], int n, int k) 
    { 
        for (int i = 0; i < n; i += k) 
        { 
            int left = i; 
      
            int right = Math.min(i + k - 1, n - 1); 
            char temp; 
              
            while (left < right) 
            { 
                temp=ch[left]; 
                ch[left]=ch[right]; 
                ch[right]=temp; 
                left+=1; 
                right-=1; 
            } 
        } 
    } 
    static int getNumber(int x[], int y)
    {
        int i, sum;
        sum = (y + 1) * (y + 2) / 2;
        for (i = 0; i < y; i++)
            sum -= x[i];
        return sum;
    }
    public static void main(String[] args) {
        // TODO code application logic here
        int x[] = { 3,5,4,1 };
        int len = x.length;
        int number = getNumber(x, len);
        System.out.println(number);    
        
        String s = "Lorem at"; 
        int k = 4; 
      
        int n = s.length(); 
        char[] ch = s.toCharArray(); 
      
        reverseString(ch, n, k); 
      
        for (int i = 0; i < n; i++) 
            System.out.print(ch[i] + " "); 
    }   
    
}
