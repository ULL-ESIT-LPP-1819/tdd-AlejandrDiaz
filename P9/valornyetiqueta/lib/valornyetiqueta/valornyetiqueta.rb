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
                    
            
                    "#{@edad}\n"
                    "#{@genero}\n"
                    "#{@peso}\n"
            
            end
            
            def to_f
                
                    
                    
                    "#{@talla}\n"
                    "#{@cadera}\n"
                    "#{@cintura}\n"
                    "#{@imc}\n"
                    "#{@porcentgrasa}\n"
                    "#{@rcc}\n"
            
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
            
                    "#{@nombre}\n"
                    "#{@apellidos}\n"
                    "#{@paciente}\n"
                    "#{@tratamiento}\n"
            
            end
            
            
            
            
            def to_i
                    
                    super :edad, :genero, :peso
            
                    "#{@edad}\n"
                    "#{@genero}\n"
                    "#{@peso}\n"
            
            end
            
            def to_f
                
                    super :talla, :cadera, :cintura, :imc, :porcentgrasa, :rcc
                    
                    
                    "#{@talla}\n"
                    "#{@cadera}\n"
                    "#{@cintura}\n"
                    "#{@imc}\n"
                    "#{@porcentgrasa}\n"
                    "#{@rcc}\n"

            
            
            end
            
                    



end



class EtiquetaN
    
            include Comparable
            
    
            attr_accessor :netiqueta, :venergeticokJ, :venergeticokcal, :cantgrasas, :cantgrasasat, :hidratosc, :azucares, :fibraa, :proteinas, :sales
            
            
            def initialize(ntiqueta, venergeticokJ, venergeticokcal, cantgrasas, cantgrasasat, hidratosc, azucares, fibraa, proteinas, sales)
            
            @netiqueta = netiqueta
            @venergeticokJ = venergeticokJ
            @venergeticokcal = venergeticokcal
            @cantgrasas = cantgrasas
            @cantgrasasat = cantgrasasat
            @hidratosc = hidratosc
            @azucares = azucares
            @proteinas = proteinas
            @fibraa = fibraa
            @sales = sales
            
            end    
    
    
    def to_s
    
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
                
            
                def initialize(ntiqueta, venergeticokJ, venergeticokcal, cantgrasas, cantgrasasat, hidratosc, azucares, fibraa, proteinas, sales, fcaducidad, tipo, aceitepalma)
                    
                    
                    super :netiqueta, :venergeticokJ, :venergeticokcal, :cantgrasas, :cantgrasasat, :hidratosc, :azucares, :fibraa, :proteinas, :sales
                    
                    
                        @netiqueta = netiqueta
                        @venergeticokJ = venergeticokJ
                        @venergeticokcal = venergeticokcal
                        @cantgrasas = cantgrasas
                        @cantgrasasat = cantgrasasat
                        @hidratosc = hidratosc
                        @azucares = azucares
                        @proteinas = proteinas
                        @fibraa = fibraa
                        @sales = sales
                        @fcaducidad = fcaducidad
                        @tipo = tipo
                        @aceitepalma = aceitepalma
                        
                    
                    
                    
                     
                end
                
                
                def to_s
                        
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