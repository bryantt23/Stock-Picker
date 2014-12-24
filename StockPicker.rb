def stock_picker(prices)
  # Find the greatest upward difference between an item in the 'prices' array
  # and an item which comes after it
  
  #array of biggest profit, empty array
  biggest_profit = [ ]
  
  #initialize to 0
  profit = 0
  #start with 0 all the way up to the last price
  #if there are 10 prices, the size is 10, size-1 = 9
  #the final price
  #to_a means make take the parameter & make it into an array
  counter = (0..(prices.size - 1)).to_a

#for each element i in the new counter array, i is the outer loop
  counter.each do |i|
#for each element j in the new counter array, j is the inner loop
    counter.each do |j|
#check if j is greater than i
      if j > i
#nested loop, now check if prices[j] - prices[i] is a positive number
#remember it starts with i, then iterates through every j value
#then increments i
#if it is bigger than current profit, it will become the new profit
        if (prices[j] - prices[i]) > profit
#calculate and store the profit
          profit = prices[j] - prices[i]
#store the indices as the profit 
          biggest_profit = [i,j]
        end
      end
    end
  end
#print
  p prices
  p biggest_profit
end

stock_picker([17,3,6,9,15,8,6,1,10])


=begin

same thing in java

public class Test {
  static int[] stock_picker= {17,3,6,9,15,8,6,1,10};
  
  public static void lowHigh()
  {   
    int profit = 0;
    int greatestProfit = 0;     
    
    for (int i=0; i<stock_picker.length-2; i++)
    {     
      for (int j=1; j<stock_picker.length-1; j++)
      {     
        if(stock_picker[j]-stock_picker[i]>profit)
        {     
          profit = stock_picker[j]-stock_picker[i];
          System.out.println(profit);
          
          if(profit>greatestProfit)
          {     
            greatestProfit = profit;
          }         
        }             
      }
    }       
    System.out.println(greatestProfit);
  }

  public static void main(String[] args) {
    lowHigh();    
  }
    
=end  