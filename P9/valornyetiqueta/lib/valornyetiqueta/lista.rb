Nodo = Struct.new(:value, :next)
Nodo_ = Struct.new(:prev, :value, :next)

class Lista
    
   
    def initialize ()
           
        @elemento = Nodo.new(nil)
    end
    
    def elemento
        
        @elemento
    end   
    
    
    def insertar_elemento(nodo)
        
        if @elemento != nil
            
            nodo.next = @elemento
            @elemento = nodo
        end
    end
    
    
    
    def extraer_elemento 
        
        aux = @elemento
        @elemento = @elemento.next
        aux.value
    end    
    
end




class Lista_doble
   
   include Enumerable
   
   attr_accessor :head, :tail
   
   
   
   def empty?
      
      @head == nil
   end
   
   
   def initialize()
      
      @head = nil
      @tail = nil 
   end
   
   
   def insertar_elemento(nodo)
      
      @nodo =  Nodo_.new(nil, nodo, nil)
      
      if @tail == nil
         @head = @nodo
         @tail = @nodo
         #@nodo
      else
          @nodo.next = @head
          @head.prev = @nodo
          @head = @nodo
          #@nodo
      end
      
   end
   
   
   
   def extraer_elemento
       
       @nodo = Nodo_.new(nil, @head.value, nil)
       
       @head = @head.next
       @head.prev = nil
       return @nodo
        
       #nodo = @head
       #if @head.next == nil
      #     @head = nil
     #  else
    #       @head = @head.next
       #end
       #return nodo
       
       #nodo = @head
       #@head = @head.next
       
       #nodo.next = nil
       #nodo.prev = nil
       
       #if @head == nil
        #  @tail = nil
       #end
       
       #return nodo
   end
   
   
   
   def each
       enum = @head
       while (enum != nil) 
            yield enum.value
            enum = enum.next
       end
   end
   
    
end


    
    
            
           
    
    
    
   