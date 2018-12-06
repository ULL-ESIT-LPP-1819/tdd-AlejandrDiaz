class Individuo
    
    
    
            include Comparable
    
            attr_accessor :nombre, :apellidos, :edad, :genero, :peso, :talla, :cadera, :cintura, :imc, :porcentgrasa, :rcc
            
            def initialize(nombre, apellidos, edad, genero, peso, talla, cadera, cintura, imc, porcentgrasa, rcc)

                    
                   
                    
                                
                            @nombre = nombre
                            @apellidos = apellidos
                            @edad = edad
                            @genero = genero
                            @peso = peso
                            @talla = talla
                            @cadera = cadera
                            @cintura = cintura
                            @imc = imc
                            @porcentgrasa = porcentgrasa
                            @rcc = rcc
                            
                                
                                
            end
            
            def to_s
                    
                    "#{@nombre}\n"
                    "#{@apellidos}\n"
            
            end
            
            
            def <=> (other)
                
                
               @imc <=> other.imc
                
            end
            
            
            
            
            def to_i
                    
            
                    "#{@edad}"
                    "#{@genero}"
                    "#{@peso}"
            
            end
            
            def to_f
                
                    
                    
                    "#{@talla}"
                    "#{@cadera}"
                    "#{@cintura}"
                    "#{@imc}"
                    "#{@porcentgrasa}"
                    "#{@rcc}"
            
            end




    
    
    
end



class Consulta < Individuo
            attr_accessor :paciente, :tratamiento
            
            def initialize(nombre, apellidos, edad, genero, peso, talla, cadera, cintura, imc, porcentgrasa, rcc, paciente, tratamiento)

                    
                    super :nombre, :apellidos, :edad, :genero, :peso, :talla, :cadera, :cintura, :imc, :porcentgrasa, :rcc
                    
                                
                            @nombre = nombre
                            @apellidos = apellidos
                            @edad = edad
                            @genero = genero
                            @peso = peso
                            @talla = talla
                            @cadera = cadera
                            @cintura = cintura
                            @imc = imc
                            @porcentgrasa = porcentgrasa
                            @rcc = rcc
                            @paciente = paciente
                            @tratamiento = tratamiento
                            
                                
                                
            end
            
            def to_s
                    
                    super :nombre, :apellidos
            
                    "#{@nombre}"
                    "#{@apellidos}"
                    "#{@paciente}"
                    "#{@tratamiento}"
            
            end
            
            
            
            
            def to_i
                    
                    super :edad, :genero, :peso
            
                    "#{@edad}"
                    "#{@genero}"
                    "#{@peso}"
            
            end
            
            def to_f
                
                    super :talla, :cadera, :cintura, :imc, :porcentgrasa, :rcc
                    
                    
                    "#{@talla}"
                    "#{@cadera}"
                    "#{@cintura}"
                    "#{@imc}"
                    "#{@porcentgrasa}"
                    "#{@rcc}"

            
            
            end
            
                    



end



class EtiquetaN
    
            include Comparable
            
    
            attr_accessor :netiqueta, :venergeticokJ, :venergeticokcal, :cantgrasas, :cantgrasasat, :hidratosc, :azucares, :fibraa, :proteinas, :sales
            
            
            def initialize(netiqueta, venergeticokJ, venergeticokcal, cantgrasas, cantgrasasat, hidratosc, azucares, fibraa, proteinas, sales)
            
            @netiqueta = netiqueta
            @venergeticokJ = venergeticokJ
            @venergeticokcal = venergeticokcal
            @cantgrasas = cantgrasas
            @cantgrasasat = cantgrasasat
            @hidratosc = hidratosc
            @azucares = azucares
            @fibraa = fibraa
            @proteinas = proteinas
            @sales = sales
            
            end    
    
    
    def to_s
    
     #"#{@netiqueta}\n#{@venergeticokJ}\n#{@venergeticokcal}\n#{@cantgrasas}\n#{@cantgrasasat}\n#{@hidratosc})\n#{@azucares}\n#{@fibraa}\n#{@proteinas}\n#{@sales}"
    
    "#{@netiqueta}"
    
    end
    
    def <=> (other)
                
                
     @proteinas <=> other.proteinas
                
    end
 
 
    def to_f
        
    "#{@venergeticokJ}"
    "#{@venergeticokcal}"
    "#{@cantgrasas}"
    "#{@cantgrasasat}"
    "#{@hidratosc}"
    "#{@azucares}"
    "#{@proteinas}"
    "#{@sales}"
    
    
    end


end


class TProducto < EtiquetaN
                attr_accessor :fcaducidad, :tipo, :aceitepalma
                
            
                def initialize(netiqueta, venergeticokJ, venergeticokcal, cantgrasas, cantgrasasat, hidratosc, azucares, fibraa, proteinas, sales, fcaducidad, tipo, aceitepalma)
                    
                    
                    super :netiqueta, :venergeticokJ, :venergeticokcal, :cantgrasas, :cantgrasasat, :hidratosc, :azucares, :fibraa, :proteinas, :sales
                    
                    
                        @netiqueta = netiqueta
                        @venergeticokJ = venergeticokJ
                        @venergeticokcal = venergeticokcal
                        @cantgrasas = cantgrasas
                        @cantgrasasat = cantgrasasat
                        @hidratosc = hidratosc
                        @azucares = azucares
                        @fibraa = fibraa
                        @proteinas = proteinas
                        @sales = sales
                        @fcaducidad = fcaducidad
                        @tipo = tipo
                        @aceitepalma = aceitepalma
                        
                    
                    
                    
                     
                end
                
                
                def to_s
                                        
                    #"#{@netiqueta}\n#{@venergeticokJ}\n#{@venergeticokcal}\n#{@cantgrasas}\n#{@cantgrasasat}\n#{@hidratosc}\n#{@azucares}\n#{@fibraa}\n#{@proteinas}\n#{@sales}\n#{@fcaducidad}\n#{@tipo}\n#{@aceitepalma}"
                    
                    super :netiqueta
                    
                    "#{@netiqueta}"
                    "#{@fcaducidad}"
                    "#{@tipo}"
                    "#{@aceitepalma}"
                    
                
                
                end
                
                
                def to_f
                
                    super :venergeticokJ, :venergeticokcal, :cantgrasas, :cantgrasasat, :hidratosc, :azucares, :proteinas, :sales
                
                    "#{@venergeticokJ}"
                    "#{@venergeticokcal}" 
                    "#{@cantgrasas}"
                    "#{@cantgrasasat}"
                    "#{@hidratosc}"
                    "#{@azucares}"
                    "#{@proteinas}"
                    "#{@sales}"
                
                
                end
                
                
                
                
                
                
                
                
                
                
end