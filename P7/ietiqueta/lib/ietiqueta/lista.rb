Nodo = Struct.new(:value, :next)

class Lista
    
    attr_accessor :head
   
    def initialize
        @head = nil
    end
    
    def esta_vacio
       if @head == nil
            true
        else
            false
       end 
    end
    
    
    def push(nodo)
        if esta_vacio
           @head = nodo
        else
            actual = @head
            while actual.next != nil
                actual = actual.next
            end
            actual.next = nodo
        end
    end
    

   
     def obtener_elem_lista(index)
        i = 0;
        elem = nil;
        actual = @head
        if(index < tamaño)
            while actual.next != nil
                if i == index
                    elem = actual
                end
                
                actual = actual.next
                i += 1
            end
            
            if i == index
                elem = actual
            end
        end
        elem
    end
    
=begin    def ordenacion_Sal
        
        
        for i in 1..(tamaño-1)
            actual = @head
            previo = nil
            stop = false
            
            temp = obtener_elem_lista(i)
            
            while (actual != nil and not stop)
                if (actual.value.sales > temp.value.sales)
                    stop = true
                else
                    previo = actual
                    actual = actual.next
                end
            end
            
            if (previo == nil)
                temp.next = @head
                @head = temp
            else
                temp.next = actual
                previo.next = temp
            end
        end
 =end      tamaño
=begin
        for i in 1..1
            j = 0
            nodo = obtener_elem_lista(i)
            aux = obtener_elem_lista(j)
            
            if (nodo.value.sales < aux.value.sales )
                
                nodo = obtener_elem_lista(j)
                nodo.next = aux
            end
        end
        @head
=end
    
   
    
    
    
def minsal
    
        i = 0
        minsal = 30
        
        for i in 0..(tamaño-1)
            if (minsal > obtener_elem_lista(i).value.sales)
            
            
                minsal = obtener_elem_lista(i).value.sales                    
                
            
            end
        
        end
        minsal    
end    
    
    
    
def maxsal
    
        i = 0
        maxsal = 0
        
        for i in 0..(tamaño-1)
            if (maxsal < obtener_elem_lista(i).value.sales)
            
            
                maxsal = obtener_elem_lista(i).value.sales                    
                
            
            end
        
        end
        maxsal    
end
    
    
    
    
    
    def sacar
       actual = @head
       anterior = @head
       
       while actual.next != nil
           anterior = actual
           actual = actual.next
       end
       
       anterior.next = nil
       
    end
    

    def tamaño
        actual = @head
        i = 0
        if !esta_vacio
            while actual.next != nil
                i += 1
                actual = actual.next
            end
            i += 1
        end
        
        i
    end
    
    def mostrar
        actual = @head
        while actual.next != nil
            puts actual.value.to_s
            actual = actual.next
        end
        puts actual.value.to_s
    end
    
    
    def push_nodos(nodos)
       for i in 0..nodos.length-1
         push(nodos[i])
       end
    end
    
end