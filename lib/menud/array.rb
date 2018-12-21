class Array
    
    
  def bubblefor
       
    cent = true
    
      for i in 0...(self.length-1)
      
        cent = false
         
         for j in 0...(self.length-i-1)
        
            if self[j] > self[j+1]
                
                self[j],self[j+1]=self[j+1],self[j]    
                cent=true
        
                
            end
         end
      break if cent == false
      end       
    self     
  end
    
    

  def bubbleach
      
    cent = true
    
    self.each_index do |i|
        
    cent = false
    
    self.each_index do |j|
        
        if self[i] < self[j]
            
            self[i], self[j] = self[j], self[i]
            
            cent=true


        end
    end
      
    break if cent == false
    end
    self
    
      
      
      
      
      
end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
end