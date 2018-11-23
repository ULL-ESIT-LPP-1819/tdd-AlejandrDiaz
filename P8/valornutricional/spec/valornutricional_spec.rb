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
    		    

    		     describe "Existe un metodo que inserta un elemento en la lista" do
            
                    it "Se inserta correctamente" do
                      
                    @lista.push(@nodo5)
                    expect(@lista.tamaño).to eq(5)
                    
                    end
    			
    		    end
    		    
    		    
    		    
    		    describe "Existe un metodo para obtener un elemento de la lista formateado" do
    		    
    		            it"Elemento formateado" do
    		              
    		            expect(@individuo_1.nombre).to respond_to(:to_s)  
    		              
    		            end
    		    end
    		    
    		    
    		    
		
	  end
	  
	  
	  
	  
	  
	  
	  context "Jerarquia" do
	
      		describe "Comprobar la herencia" do
      		  
        			it "Consulta es una clase herencia de Individuo" do
        				expect(@consulta1.is_a? Consulta).to eq(true)
        				expect(@consulta1.kind_of? Individuo).to eq(true)
        			end
        			
        			it "Individuo no es una clase herencia de Consulta" do
        			  
        			   expect(@individuo_1.is_a? Individuo).to eq(true)
        			   expect(@individuo_1.kind_of? Consulta).to eq(false)
        			end
      			
      			
      		end
	  end
	  
	  
	  
	  context "Clase" do
	    
    	     describe "Comprobar la Clase de un Objeto " do
    	       
        	      it "El objeto individuo1 pertenece a la clase Individuo" do
        	        
    				        expect(@individuo_3).to be_an_instance_of(Individuo)
    				        
    			      end
        	      
        	      it "El objeto consulta1 pertenece a la clase Consulta" do
        	        
    				        expect(@consulta1).to be_an_instance_of(Consulta)
    				        
    			      end
    	       
    	       
    	       
    	       
    	     end
	   
	 end
	  
	  
	  
	  
	  context "Tipo" do
	    
	          describe "Comprobar el tipo de un Objeto" do
	            
	            
	              it "El objeto inviduo_1 es de tipo Individuo" do
	                
	                expect(@individuo_1).to be_a(Individuo)
	                
	              end
	              
	              
	              it "El objeto consulta1 es de tipo Consulta" do
	                
	                expect(@consulta1).to be_a(Consulta)
	                
	              end
	            
	          end
	   
	  end
	  
	  context "Clasificacion" do
	  
	  
	        describe "Clasificacion de individuos por IMC"
	  
	  
            	  it "Existe un metodo para obtener al invidiuo con menor IMC" do
                    
                  expect(@lista.minimc).to eq(20.038)  
                    
                end
                it "Existe un metodo para obtener al individuo con mayor IMC" do
                    
                  expect(@lista.maximc).to eq(24.038)  
                    
                end
                
            
          end
	  
	  
	   end
	  

	  
	  
	  

	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
    

    
    

    
    


