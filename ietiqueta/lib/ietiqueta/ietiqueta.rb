class EInformacionN
    
    attr_reader :netiqueta, :venergetico[1], :cantgrasas, :cantgrasasat, :hidratosc, :azucares, :fibraa, :proteinas, :sales
    
    attr_writer :netiqueta, :venergetico[1], :cantgrasas, :cantgrasasat, :hidratosc, :azucares, :fibraa, :proteinas, :sales
    
    def initialize(nombretiqueta, cantidadgrasas, cantidadgrasasat, hidratoscarbono, cazucares, cfibraa, cproteinas, csal)
      
     @netiqueta = nombretiqueta   
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
    
    end
    
    
    
    
    
    
#---Gets----

    def get_valenergeticokJ
        
        @venergetico[0]= 2189
    
    end
    
    def get_valenergeticokcal
        
        @venergetico[1]= (2189*0.2388)
        
    end
    
    
    
    
    def get_cangrasas
        
        @cantgrasas
    
    end
    
    def get_cangrasasat
        
        @cantgrasasat
    
    end
    
    def get_hidratoscarb
        
        @hidratosc
    
    end
    
    def get_cantazucares
        
        @azucares
    
    end
    
    
    def get_cantfibra
        
       @fibraa
        
    end
    
    def get_cantproteinas
        
        @proteinas
    
    end
    
    
    def get_cantsal
        
       @sales
        
    end
    
    def get_nombetiqueta
        
       @netiqueta
        
    end
    
        
        
        
#-----Sets-----
    
    
    def set_valenergetico(vaenergetico)
        
        @venergetico=vaenergetico
        
    end
    
    
    def set_cangrasas(grasas)
        
        @cantgrasas=grasas
        
    end
    
    def set_cangrasasat(grasasat)
        
        @cantgrasasat=grasasat
        
    end
    
    def set_hidcarb(hidratos)
        
        @hidratosc=hidratos
        
    end
        
    def set_cantazucares(azucar)
        
        @azucares=azucar
    
    end
    
    def set_canfibraa(fibra)
        
        @fibraa=fibra
    
    end
        
    
    def set_proteina(proteins)
        
        @proteinas=proteins
        
    end
    
    def set_netiquetan(notiqueta)
        
        @netiqueta=noetiqueta
        
    end
    

    #3.0v.EInformacionN()
    
    
end