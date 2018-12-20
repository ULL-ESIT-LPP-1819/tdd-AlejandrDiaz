# Author:: Alejandro Díaz Cueca(alu0100761948@ull.edu.es)
# Copyright:: Creative Commons
# License:: Distributes under the same terms as Ruby
#
# We create a struct to describe the configuration of a node
#


Nodo = Struct.new(:value, :next)
Nodo_ = Struct.new(:prev, :value, :next)


#
# Lista class
# Here we have a simple linked list
# * initialize
# * elemento
# * insertar_elemento
# * extraer_elemento





class Lista
    
    # We set to nil value the initial node
    def initialize ()
           
        @elemento = Nodo.new(nil)
    end
    
    # Just to define the element
    def elemento
        
        @elemento
    end   
    
    # We insert a new element on the simple linked list
    def insertar_elemento(nodo)
        
        if @elemento != nil
            
            nodo.next = @elemento
            @elemento = nodo
        end
    end
    
    
    # We extract a element from the simple linked list
    def extraer_elemento 
        
        aux = @elemento
        @elemento = @elemento.next
        aux.value
    end    
    
end



#
# Lista_doble class
# It's a double linked list in this case, we used a struct to describe the class too
# we include the mixin Enumerable
# * empty
# * initialize
# * insertar_elemento
# * extraer_elemento
# * each

class Lista_doble
   
   include Enumerable
   
   attr_accessor :head, :tail
   
   
   # We set the initial node to nil and we see if the dll is empty
   def empty?
      
      @head == nil
   end
   
   # We set the initial and last node to nil
   def initialize()
      
      @head = nil
      @tail = nil 
   end
   
   # We insert a new element on the double linked list
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
   
   
   # We extract a new element on the double linked list
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
   
   
   # Its a define like a iteration on the nodes of the list to get the value
   def each
       enum = @head
       while (enum != nil) 
            yield enum.value
            enum = enum.next
       end
   end
   
   def convert_a_for
       
    
        n_array= []
        
        enum=@head
        
        for i in self do
                
            n_array.push(enum.value)
            enum = enum.next
        end
       n_array.bubblefor
      
   end
   
    
    def convert_a_each
       
    
        n_array= []
        
        enum=@head
        
        for i in self do
                
            n_array.push(enum.value)
            enum = enum.next
        end
       n_array.bubbleach
      
    end
    
    
    
   
    
end


    
    
            
           
    
    
    
   