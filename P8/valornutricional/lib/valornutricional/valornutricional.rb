class Individuo
    
    
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