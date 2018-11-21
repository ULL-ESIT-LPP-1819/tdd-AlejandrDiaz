require 'spec_helper'
require 'valornutricional'




describe Individuo do
    
    before :all do
        
        @individuo_1 = Individuo.new("Alejandro", "Diaz Cueca", 24, 1, 78, 184, 70, 88, 23.038, 16.966, 1.257)
        
        @individuo_2 = Individuo.new("Bartolo", "Gomez Gutierrez", 26, 1, 87, 180, 80, 95, 24.038, 20.966, 1.403)
        
        @individuo_3 = Individuo.new("Josele", "Garcia Hernandez", 30, 1, 70, 175, 75, 90, 22.038, 16.966, 1.210)
        
        @individuo_4 = Individuo.new("Alberto", "Ramos Diaz", 20, 1, 65, 165, 70, 80, 20.038, 12.567, 1.110)
        
        @individuo_5 = Individuo.new("Maribel", "Hernandez Villanueva", 31, 0, 75, 165, 78, 98, 22.038, 17.567, 1.065)
        
      
        @consulta1 = Consulta.new("Gerardo", "Martin Gonzalez", 19, 1, 90, 165, 80, 105, 23.538, 22.567, 1.401, "Si", "Si")
      
    @lista = Lista.new
    
    @nodo1 = Nodo.new(@individuo_1, nil)
    @nodo2 = Nodo.new(@individuo_2, nil)
    @nodo3 = Nodo.new(@individuo_3, nil)
    @nodo4 = Nodo.new(@individuo_4, nil)
    @nodo5 = Nodo.new(@individuo_5, nil)
    
    @lista.push(@nodo1)
    @lista.push(@nodo2)
    @lista.push(@nodo3)
    @lista.push(@nodo4)
    @lista.push(@nodo5) 
      
    end   
        

    context "Lista" do
		
    		describe "Existe un elemento head en la lista" do
    		  
            		it "Existe" do
            		  
                    expect(@lista).to respond_to(:head) 
            
                end
        end
            
            
            describe "Existe un metodo para comprobar si la lista esta vacía" do
            
            
                  it "Existe" do
                    
                    expect(@lista.esta_vacio).to eq(false) 
                  
                  end
            end
            
             describe "Existe un metodo para obtener un elemento de la lista de los Individuos" do
            
                  it "Se obtiene correctamente" do
                    
                  expect(@lista.obtener_elem_lista(2)).to eq(@nodo3)
                  
                  end
             end
            
            
            
            
            describe "Existe un metodo que elimina el ultimo elemento de la lista" do
            
                    it "Se elimina correctamente" do
                      
                    @lista.sacar
                    expect(@lista.tamaño).to eq(4)
                    
                    end
    			
    		    end
		
	  end
	  
	  
	  
	  
	  
	  
	  context "Jerarquia" do
	
      		describe "Comprobar la herencia" do
      		  
        			it "Consulta es una clase herencia de Individuo" do
        				expect(@consulta1.is_a? Consulta).to eq(true)
        				expect(@consulta1.kind_of? Individuo).to eq(true)
        			end
        			
        			
        			it "Comprobar que un individuo no es una instancia de consulta" do
				        expect(@individuo1.instance_of? Consulta).to eq(false)	
			        end
      			
      			
      		end
	  end

	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
    

    
    

end
    
    


