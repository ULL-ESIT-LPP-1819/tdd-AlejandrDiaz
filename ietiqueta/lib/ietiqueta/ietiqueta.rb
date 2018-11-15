class EInformacionN
    
    attr_accessor :netiqueta, :venergeticokJ, :venergeticokcal, :cantgrasas, :cantgrasasat, :hidratosc, :azucares, :fibraa, :proteinas, :sales
    
    
    def initialize(nombretiqueta, venergeticokj, venergeticokca, cantidadgrasas, cantidadgrasasat, hidratoscarbono, cazucares, cfibraa, cproteinas, csal)
      
     @netiqueta = nombretiqueta
     @venergeticokJ = venergeticokj
     @venergeticokcal = venergeticokca
     @cantgrasas = cantidadgrasas
     @cantgrasasat = cantidadgrasasat
     @hidratosc = hidratoscarbono
     @azucares = cazucares
     @proteinas = cproteinas
     @fibraa = cfibraa
     @sales = csal
        
    end    
    
    
    def to_s
    
    "#{@netiqueta}"
    
    
    end
    
    def to_f
        
    "#{@venergetico}"
    "#{@cantgrasas}"
    "#{@cantgrasasat}"
    "#{@hidratosc}"
    "#{@azucares}"
    "#{@proteinas}"
    "#{@sales}"
    
    
    end
    
    
=begin
def get_conjunto_sales
        i = 1
        salida = @sales[0].to_f
       while (i < @sales.length) do
          salida +=  @sales[i].to_f
           i += 1
        end
        salida
end 

=end
    


    

    
    
end