
# Author:: Alejandro Díaz Cueca(alu0100761948@ull.edu.es)
# Copyright:: Creative Commons
# License:: Distributes under the same terms as Ruby



# This source files contains the superclass Individuo and EtiquetaN

# Superclass Individuo is use to get  the information about a person and his anthropometric measures

# including mixin Comparable
# * method initialize
# * method to_s
# * method to_f
# * method to_i
# * method <=>
#

class Individuo
    
    
    
            include Comparable
    
            attr_accessor :nombre, :apellidos, :edad, :genero, :peso, :talla, :cadera, :cintura, :imc, :porcentgrasa, :rcc, :peso_t_i, :gasto_e_basal, :efecto_t_a, :gasto_ef, :factor_actvf, :gasto_e_total
            
            # Method to initialize every anthropometric measures
            def initialize(nombre, apellidos, edad, genero, peso, talla, cadera, cintura, imc, porcentgrasa, rcc, peso_t_i, gasto_e_basal, efecto_t_a, gasto_ef, factor_actvf, gasto_e_total)

                    
                   
                    
                                
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
                            @peso_t_i = peso_t_i
                            @gasto_e_basal = gasto_e_basal
                            @efecto_t_a = efecto_t_a
                            @gasto_ef = gasto_ef
                            @factor_actvf = factor_actvf
                            @gasto_e_total = gasto_e_total
                            
                                
                                
            end
=begin   
            # Method to transform into string
            def to_s
                    
                    "#{@nombre}\n"
                    "#{@apellidos}\n"
            
            end
=end
            # Method to get the value of imc and do the comparison
            def <=> (other)
                
                
               @imc <=> other.imc
                
            end
            
            
=begin    
            # Method to transform into int 
            def to_i
                    
            
                    "#{@edad}"
                    "#{@genero}"
                    "#{@peso}"
            
            end
            
            # Method to transform into float
            def to_f
                
                    
                    
                    "#{@talla}"
                    "#{@cadera}"
                    "#{@cintura}"
                    "#{@imc}"
                    "#{@porcentgrasa}"
                    "#{@rcc}"
                    "#{@peso_t_i}"
                    "#{@gasto_e_basal}"
                    "#{@efecto_t_a}"
                    "#{@gasto_ef}"
                    "#{@factor_actvf}"
                    "#{@gasto_e_total}"
                    
                    
                     
                    
            
            end
=end

            def peso_total_ideal
                
            @peso_t_i = ((@talla - 150) * 0.75 + 50)
                
                
            end
            
        def gasto_energetico_basal
                
            if (@sexo = 1)
                    
                @gasto_e_basal = ((10 * @peso) + (6.25 * @talla) - (5 * @edad) + 5 ) 
            
            elsif
                 @gasto_e_basal = ((10 * @peso) + (6.25 * @talla) - (5 * @edad) - 161 ) 
            end
                
            
        end

        def efecto_termogeno_alimentos
            
          @efecto_t_a = (@gasto_e_basal * 0.10)  
            
        end


        def gasto_actividadf
            
         @gasto_ef = (@gasto_e_basal * @factor_actvf).round(2)
            
        end

        
        def gasto_energetico_t
            
         @gasto_e_total = (@gasto_e_basal + @efecto_t_a + @gasto_ef)  
            
        end

            

    
    
    
end


#
# Class Consulta derived from the superclass Individuo

# * method initialize
# * method to_s
# * method to_f
# * method to_i

class Consulta < Individuo
            attr_accessor :paciente, :tratamiento
            
            #Method to initialize every anthropometric measures and get if this person is patient and have a treatment already assignment
            def initialize(nombre, apellidos, edad, genero, peso, talla, cadera, cintura, imc, porcentgrasa, rcc, peso_t_i, gasto_e_basal, efecto_t_a, gasto_ef, factor_actvf, gasto_e_total, paciente, tratamiento)

                    
                    super :nombre, :apellidos, :edad, :genero, :peso, :talla, :cadera, :cintura, :imc, :porcentgrasa, :rcc, :peso_t_i, :gasto_e_basal, :efecto_t_a, :gasto_ef, :factor_actvf, :gasto_e_total
                    
                                
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
                            @peso_t_i = peso_t_i
                            @gasto_e_basal = gasto_e_basal
                            @efecto_t_a = efecto_t_a
                            @gasto_ef = gasto_ef
                            @factor_actvf = factor_actvf
                            @gasto_e_total = gasto_e_total
                            @paciente = paciente
                            @tratamiento = tratamiento
                            
                                
                                
            end
            
            # Method to transform into string
=begin
            def to_s
                    
                    super :nombre, :apellidos
            
                    "#{@nombre}"
                    "#{@apellidos}"
                    "#{@paciente}"
                    "#{@tratamiento}"
            
            end
            
            
            
            # Method to transform into int
            def to_i
                    
                    super :edad, :genero, :peso
            
                    "#{@edad}"
                    "#{@genero}"
                    "#{@peso}"
            
            end
            
            # Method to transform into float
            def to_f
                
                    super :talla, :cadera, :cintura, :imc, :porcentgrasa, :rcc, :peso_t_i, :gasto_e_basal, :efecto_t_a, :gasto_ef, :factor_actvf, :gasto_e_total
                    
                    
                    "#{@talla}"
                    "#{@cadera}"
                    "#{@cintura}"
                    "#{@imc}"
                    "#{@porcentgrasa}"
                    "#{@rcc}"
                    "#{@peso_t_i}"
                    "#{@gasto_e_basal}"
                    "#{@efecto_t_a}"
                    "#{@gasto_ef}"
                    "#{@factor_actvf}"
                    "#{@gasto_e_total}"

            
            
            end
=end            
                    
                    
            
            
                    
                    
                    



end

#
# Superclass EtiquetaN is use to get  the information about a product and its nutritional label

# including mixin Comparable
# * method initialize
# * method to_s
# * method to_f
# * method <=>
#



class EtiquetaN
    
            include Comparable
            
    
            attr_accessor :netiqueta, :venergeticokJ, :venergeticokcal, :cantgrasas, :cantgrasasat, :hidratosc, :azucares, :fibraa, :proteinas, :sales
            
            # Initializing every characteristic about nutritional labels and his name
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
   
    # Method to transform into string
=begin
    def to_s
    
     #"#{@netiqueta}\n#{@venergeticokJ}\n#{@venergeticokcal}\n#{@cantgrasas}\n#{@cantgrasasat}\n#{@hidratosc})\n#{@azucares}\n#{@fibraa}\n#{@proteinas}\n#{@sales}"
    
    "#{@netiqueta}"
    
    end
=end
    
    #Method to get the value of proteins and do the comparison
    def <=> (other)
                
                
     @proteinas <=> other.proteinas
                
    end
 
    #Method to transform into float
=begin
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
=end

end


#
# Class Tproducto deriven from the superclass EtiquetaN
# adding more features about nutritional labels

# * method initialize
# * method to_s
# * method to_f





class TProducto < EtiquetaN
                attr_accessor :fcaducidad, :tipo, :aceitepalma
                
                #Method to initialize every feature about the nutrition label also adding some more
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
                
                # Method to transform into string
                def to_s
                                        
                    #"#{@netiqueta}\n#{@venergeticokJ}\n#{@venergeticokcal}\n#{@cantgrasas}\n#{@cantgrasasat}\n#{@hidratosc}\n#{@azucares}\n#{@fibraa}\n#{@proteinas}\n#{@sales}\n#{@fcaducidad}\n#{@tipo}\n#{@aceitepalma}"
                    
                    super :netiqueta
                    
                    "#{@netiqueta}"
                    "#{@fcaducidad}"
                    "#{@tipo}"
                    "#{@aceitepalma}"
                    
                
                
                end
                
                # Method to transform into float
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