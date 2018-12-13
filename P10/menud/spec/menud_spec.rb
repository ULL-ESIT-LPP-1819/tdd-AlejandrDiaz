require 'spec_helper'
require 'menud'




describe Individuo do
    
    before :each do
        
        @individuo_1 = Individuo.new("Alejandro", "Diaz Cueca", 24, 1, 78, 184, 70, 88, 20.038, 16.966, 1.257, 75.5, 1815, 181.5, 490.0, 0.27, 2486.5)
        
        @individuo_2 = Individuo.new("Bartolo", "Gomez Gutierrez", 26, 1, 87, 180, 80, 95, 24.038, 20.966, 1.403, 72.5, 1870, 187, 224.4, 0.12, 2281.4)
        
        @individuo_3 = Individuo.new("Josele", "Garcia Hernandez", 30, 1, 70, 175, 75, 90, 21.038, 16.966, 1.210, 68.7, 1648.7, 164.9, 197.8, 0.12, 2011.4)
        
        @individuo_4 = Individuo.new("Alberto", "Ramos Diaz", 20, 1, 65, 165, 70, 80, 19.038, 12.567, 1.110, 61.2, 1586.2, 158.6, 856.4, 0.54, 2601.2)
        
        @individuo_5 = Individuo.new("Maribel", "Hernandez Villanueva", 31, 0, 75, 165, 78, 98, 22.538, 17.567, 1.065, 61.2,1465.2, 146.5, 0.0, 0.0, 1611.5)
        
      
        @consulta1 = Consulta.new("Gerardo", "Martin Gonzalez", 19, 1, 90, 165, 80, 105, 23.538, 22.567, 1.401, 61.2, 1841.2, 184.1, 497.0, 0.27, 2522.3, "Si", "Si")
      
    @lista = Lista.new
    @lista_doble = Lista_doble.new
    
    
    @nodo1 = Nodo.new(@individuo_1)
    @nodo2 = Nodo.new(@individuo_2)
    @nodo3 = Nodo.new(@individuo_3)
    @nodo4 = Nodo.new(@individuo_4)
    @nodo5 = Nodo.new(@individuo_5)
    
    @nodo6 = Nodo_.new(nil,@individuo_1,nil)
    
      
    end   





        

    context "Nodo" do
    		
    		describe "Debe existir un Nodo de la lista con sus datos y su siguiente" do
    		
    			it "Almacenando valores" do
    					expect(@nodo1.value).to eq(@individuo_1)
    					expect(@nodo1.next).to eq(nil)
    			end
    			
    		end
    		
    end




	
	
    context "Lista" do
    		
    		describe "Se extrae el primer elemento de la lista de individuos" do
    			it "Se extrae correctamente" do
    				@lista.insertar_elemento(@nodo1)
    				@lista.insertar_elemento(@nodo2)
    				@lista.extraer_elemento
    				expect(@lista.elemento).to eq(@nodo1)
    			end
    		end
    		
    		
    		
    		
    		describe "Se puede insertar un elemento" do
    			it "Se inserta correctamente" do
    				@lista.insertar_elemento(@nodo3)
    				expect(@lista.elemento).to eq(@nodo3)
    			end
    			
    			
            end
		
		
    		describe "Se pueden insertar varios elementos" do
    			it "Se insertaron correctamente" do
    				@lista.insertar_elemento(@nodo1)
    				expect(@lista.elemento).to eq(@nodo1)
    				@lista.insertar_elemento(@nodo2)
    				expect(@lista.elemento).to eq(@nodo2)
    				@lista.insertar_elemento(@nodo3)
    				expect(@lista.elemento).to eq(@nodo3)
    				@lista.insertar_elemento(@nodo4)
    				expect(@lista.elemento).to eq(@nodo4)
    				@lista.insertar_elemento(@nodo5)
    				expect(@lista.elemento).to eq(@nodo5)
    			end
    		end
        		
        		describe "Debe existir una lista con su cabeza" do
        			it "Existe" do
        				@lista.insertar_elemento(@nodo1)
        				expect(@lista.elemento).to eq(@nodo1)
        			end
        		end
    end
	
    context "Lista_Doble" do
    	
    		describe "Comprobar nodo de la lista doblemente enlazada" do
    			it "Existe el nodo" do
    				expect(@nodo6.prev).to eq(nil)
    				expect(@nodo6.next).to eq(nil)
    			end
    		end
    		
    		describe "Comprobar lista doblemente enlazada" do
    			it "La lista esta vacia" do
    				expect(@lista_doble.empty?).to eq(true)
    			end
    		end
    		
    		describe "Existe una lista doblemente enlazada" do
    			it "Se puede insertar un nodo a la lista" do
    				@lista_doble.insertar_elemento(@individuo_1)
    				expect(@lista_doble.head.value).to eq(@individuo_1)
    			end
    		end
    		
    		describe "Se pueden insertar varior elementos a la dll" do
    			it "Se insertan correctamente" do
    				@lista_doble.insertar_elemento(@individuo_1)
    				@lista_doble.insertar_elemento(@individuo_2)
    				@lista_doble.insertar_elemento(@individuo_3)
    				@lista_doble.insertar_elemento(@individuo_4)
    				@lista_doble.insertar_elemento(@individuo_5)
    				
    				expect(@lista_doble.head.value).to eq(@individuo_5)
    				expect(@lista_doble.head.next.value).to eq(@individuo_4)
    				expect(@lista_doble.head.next.next.value).to eq(@individuo_3)
    				expect(@lista_doble.head.next.next.next.value).to eq(@individuo_2)
    				expect(@lista_doble.tail.value).to eq(@individuo_1)
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
    
    
    
    context "Comparable" do
		
		describe "Comprobando clase Individuo comparable" do
			
			it "Comprobando primer individuo tiene menor imc que el segundo" do
				expect(@individuo_1 < @individuo_2).to be true
			end
		
			it "Comprobando primer  individuo tiene mayor imc que el segundo" do
				expect(@individuo_2 > @individuo_3).to be true
			end
			
			it "Comprobando primer  individuo tiene menor o igual imc que el segundo" do
				expect(@consulta1 <= @individuo_2).to be true
			end
			
			it "Comprobando primer individuo tiene mayor o igual imc que el segundo" do
				expect(@individuo_5 >= @individuo_1).to be true
			end
			
			it "Comprobando el primer individuo tiene distinto imc al segundo" do
				expect(@individuo_2 == @individuo_3).to be false	
			end
		end
	end
 
  
    
    
    
    
    context "Enumerable" do
		
		describe "Comprobancion clase Lista_doble enumerable" do
			
			it "Minimo de la lista" do
				@lista_doble.insertar_elemento(@individuo_1)
				@lista_doble.insertar_elemento(@individuo_2)
				@lista_doble.insertar_elemento(@individuo_3)
				@lista_doble.insertar_elemento(@individuo_4)
				@lista_doble.insertar_elemento(@individuo_5)
				@lista_doble.insertar_elemento(@consulta1)
				
				expect(@lista_doble.min).to eq(@individuo_4)
			end
			
			it "Maximo de la lista" do
				@lista_doble.insertar_elemento(@individuo_1)
				@lista_doble.insertar_elemento(@individuo_2)
				@lista_doble.insertar_elemento(@individuo_3)
				@lista_doble.insertar_elemento(@individuo_4)
				@lista_doble.insertar_elemento(@individuo_5)
				@lista_doble.insertar_elemento(@consulta1)
				
				expect(@lista_doble.max).to eq(@individuo_2)
			end
			
			it "Orden de la lista" do
				@lista_doble.insertar_elemento(@individuo_1)
				@lista_doble.insertar_elemento(@individuo_2)
				@lista_doble.insertar_elemento(@individuo_3)
				@lista_doble.insertar_elemento(@individuo_4)
				@lista_doble.insertar_elemento(@individuo_5)
				@lista_doble.insertar_elemento(@consulta1)
				
				expect(@lista_doble.sort).to eq([@individuo_4, @individuo_1, @individuo_3, @individuo_5, @consulta1, @individuo_2])
			end
			
			it "Collect de la lista" do
				@lista_doble.insertar_elemento(@individuo_1)
				@lista_doble.insertar_elemento(@individuo_2)
				@lista_doble.insertar_elemento(@individuo_3)
				@lista_doble.insertar_elemento(@individuo_4)
				@lista_doble.insertar_elemento(@individuo_5)
				@lista_doble.insertar_elemento(@consulta1)
				
				expect(@lista_doble.collect{0}).to eq([0, 0, 0, 0, 0, 0])
			end
			

		end
	end

    
   context "Menu Dietetico" do
   	
   		describe "Funciones de los individuos" do
   	
   	
			it "Peso teorico ideal" do
				
			expect(@individuo_1.peso_total_ideal).to eq(75.5)
			expect(@individuo_2.peso_total_ideal).to eq(72.5)
			expect(@individuo_3.peso_total_ideal).to eq(68.75)
			expect(@individuo_4.peso_total_ideal).to eq(61.25)
			expect(@individuo_5.peso_total_ideal).to eq(61.25)	
				
				
			end
			
			it "Gasto energetico basal" do
			
			expect(@individuo_1.gasto_energetico_basal).to eq(1815)
			expect(@individuo_2.gasto_energetico_basal).to eq(1870)
			expect(@individuo_3.gasto_energetico_basal).to eq(1648.75)
			expect(@individuo_4.gasto_energetico_basal).to eq(1586.25)
			expect(@individuo_5.gasto_energetico_basal).to eq(1631.25)	
			
			
			end

			it "Efecto termogeno de alimentos" do
			
			expect(@individuo_1.efecto_termogeno_alimentos).to eq(181.5)
			expect(@individuo_2.efecto_termogeno_alimentos).to eq(187)
			expect(@individuo_3.efecto_termogeno_alimentos).to eq(164.87)
			expect(@individuo_4.efecto_termogeno_alimentos).to eq(158.62)
			expect(@individuo_5.efecto_termogeno_alimentos).to eq(146.52)	
			
			
			end


			it "Gasto actividad fisica" do
			
			expect(@individuo_1.gasto_actividadf).to eq(490.05)
			expect(@individuo_2.gasto_actividadf).to eq(224.4)
			expect(@individuo_3.gasto_actividadf).to eq(197.84)
			expect(@individuo_4.gasto_actividadf).to eq(856.55)
			expect(@individuo_5.gasto_actividadf).to eq(0.0)	
			
			
			end
			
			
			it "Gasto de energia total" do
			
			expect(@individuo_1.gasto_energetico_t).to eq(2486.5)
			expect(@individuo_2.gasto_energetico_t).to eq(2281.4)
			expect(@individuo_3.gasto_energetico_t).to eq(2011.4)
			expect(@individuo_4.gasto_energetico_t).to eq(2601.2)
			expect(@individuo_5.gasto_energetico_t).to eq(1611.7)	
			
			
			end
			
		end
   end
    
    
    
 describe "Menu dieteticos compuestos por etiquetas" do
		
		before :all do
			
			@rufles = EtiquetaN.new("Rufles Jamon", 2216, "532", "32.5", "3.0", "49.6", "1.8", "4.3", "6.5", "1.7")
	        
	        @pringles = EtiquetaN.new("Pringles", 2140, "511", "32", "3.6", "51", "2.8", "2.6", "4.0", "1.4")
	        
	        @nutella = EtiquetaN.new("Nutella", 2273, "544", "6.0", "57.3", "56.7", "31.6", "10.9", "3.4", "0.037")
	        
	        @energy = EtiquetaN.new("Chiquilin Energy", 2057, "491", "6.5", "66.0", "28.0", "22.0", "11.0", "3.6", "0.24")
	        
	        @tortitas = EtiquetaN.new("Tortitas de Arroz", 1558, "368", "9.0", "75.0", "1.0", "3.0", "0.6", "2.7", "0.50")
	        
	        @galletas = TProducto.new("Tuestis", 2094, "500", "23.0", "13.0", "66.0", "28.0", "3.0", "5.7", "0.75", "20-12-2019", "Procesado", "Si")	
			
			
			@menud_1 = [@rufles, @galletas]
			@menud_2 = [@pringles,@tortitas]
			@menud_3 = [@tortitas]
			@menud_4 = [@rufles,@pringles,@galletas]
			@menud_5 = [@tortitas,@nutella]
		end
	
	
	
	
		it "El Menu1 cumple con las calorias que necesita el Individuo1" do
			
			kcal_m = @menud_1.map{ |i| i.venergeticokJ}	
		
			kcal__totales = kcal_m.reduce(:+)
			
			g_energetico_indv = @individuo_1.gasto_energetico_t
			
			expect(kcal__totales >= g_energetico_indv).to eq(true)
		
		
		end
		
		it "El Menu2 cumple con las calorias que necesita el Individuo2" do
			
			kcal_m = @menud_2.collect{ |x| x.venergeticokJ}	
		
			kcal__totales = kcal_m.reduce(:+)
			
			g_energetico_indv = @individuo_2.gasto_energetico_t
			
			expect(kcal__totales >= g_energetico_indv).to eq(true)
		
		
		end
		
		it "El Menu3 no  cumple con las calorias que necesita el Individuo3" do
			
			kcal_m = @menud_3.collect{ |x| x.venergeticokJ}	
		
			kcal__totales = kcal_m.reduce(:+)
			
			g_energetico_indv = @individuo_3.gasto_energetico_t
			
			expect(kcal__totales <= g_energetico_indv).to eq(true)
		
		
		end
		
		it "El Menu4 cumple con las calorias que necesita el Individuo4" do
			
			kcal_m = @menud_4.map{ |i| i.venergeticokJ}	
		
			kcal__totales = kcal_m.reduce(:+)
			
			g_energetico_indv = @individuo_4.gasto_energetico_t
			
			expect(kcal__totales <= g_energetico_indv).to eq(false)
		
		
		end
		
		it "El Menu5 no cumple  con las calorias que necesita el Individuo5" do
			
			menu_6 = @menud_3.zip(@menud_4)
			
			kcal_m = menu_6.map{ |i, index| i.venergeticokJ}	
		
			kcal__totales = kcal_m.reduce(:+)
			
			g_energetico_indv = @individuo_4.gasto_energetico_t
			
			expect(kcal__totales >= g_energetico_indv).to eq(false)
		
		
		end
	
	
		
		
		
		
	end   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  

end









describe EtiquetaN do
    
    before :each do
        
        @etiqueta_1 = EtiquetaN.new("Rufles Jamon", "2216", "532", "32.5", "3.0", "49.6", "1.8", "4.3", "6.5", "1.7")
        
        @etiqueta_2 = EtiquetaN.new("Pringles", "2140", "511", "32", "3.6", "51", "2.8", "2.6", "4.0", "1.4")
        
        @etiqueta_3 = EtiquetaN.new("Nutella", "2273", "544", "6.0", "57.3", "56.7", "31.6", "10.9", "3.4", "0.037")
        
        @etiqueta_4 = EtiquetaN.new("Chiquilin Energy", "2057", "491", "6.5", "66.0", "28.0", "22.0", "11.0", "3.6", "0.24")
        
        @etiqueta_5 = EtiquetaN.new("Tortitas de Arroz", "1558", "368", "9.0", "75.0", "1.0", "3.0", "0.6", "2.7", "0.50")
        
        @producto_1 = TProducto.new("Tuestis", "2094", "500", "23.0", "13.0", "66.0", "28.0", "3.0", "5.7", "0.75", "20-12-2019", "Procesado", "Si")
        
      
      
    @lista2 = Lista.new
    @lista_doble2 = Lista_doble.new
    
    @nodo1e = Nodo.new(@etiqueta_1)
    @nodo2e = Nodo.new(@etiqueta_2)
    @nodo3e = Nodo.new(@etiqueta_3)
    @nodo4e = Nodo.new(@etiqueta_4)
    @nodo5e = Nodo.new(@etiqueta_5)
    
    @nodo6e = Nodo_.new(nil,@etiqueta_1,nil) 
    
        
    end
    
    
    
    
    context "Nodo" do
		
		describe "Debe existir un Nodo de la lista con sus datos y su siguiente" do
		
			it "Almacenando valores" do
					expect(@nodo1e.value).to eq(@etiqueta_1)
					expect(@nodo1e.next).to eq(nil)
			end
			
		end
		
end


	
	
context "Lista" do
		

		describe "Se extrae el primer elemento de la lista de etiquetas" do
			it "Se extrae correctamente" do
				@lista2.insertar_elemento(@nodo1e)
				@lista2.insertar_elemento(@nodo2e)
				@lista2.extraer_elemento
				expect(@lista2.elemento).to eq(@nodo1e)
			end
		end
		
		
		describe "Se puede insertar un elemento" do
			it "Se inserta correctamente" do
				@lista2.insertar_elemento(@nodo3e)
				expect(@lista2.elemento).to eq(@nodo3e)
			end
			
end
		
		
		describe "Se pueden insertar varios elementos" do
			it "Se insertaron correctamente" do
				@lista2.insertar_elemento(@nodo1e)
				expect(@lista2.elemento).to eq(@nodo1e)
				@lista2.insertar_elemento(@nodo2e)
				expect(@lista2.elemento).to eq(@nodo2e)
				@lista2.insertar_elemento(@nodo3e)
				expect(@lista2.elemento).to eq(@nodo3e)
				@lista2.insertar_elemento(@nodo4e)
				expect(@lista2.elemento).to eq(@nodo4e)
				@lista2.insertar_elemento(@nodo5e)
				expect(@lista2.elemento).to eq(@nodo5e)
			end
		end
		
		describe "Debe existir una lista con su cabeza" do
			it "Existe" do
				@lista2.insertar_elemento(@nodo1e)
				expect(@lista2.elemento).to eq(@nodo1e)
			end
		end
end
	
context "Lista_Doble" do
	
		describe "Comprobar nodo de la lista doblemente enlazada" do
			it "Existe el nodo" do
				expect(@nodo6e.prev).to eq(nil)
				expect(@nodo6e.next).to eq(nil)
			end
		end
		
		describe "Comprobar lista doblemente enlazada" do
			it "La lista esta vacia" do
				expect(@lista_doble2.empty?).to eq(true)
			end
		end
		
		describe "Existe una lista doblemente enlazada" do
			it "Se puede insertar un nodo a la lista" do
				@lista_doble2.insertar_elemento(@etiqueta_1)
				expect(@lista_doble2.head.value).to eq(@etiqueta_1)
			end
		end
		
		describe "Se pueden insertar varior elementos a la dll" do
			it "Se insertan correctamente" do
				@lista_doble2.insertar_elemento(@etiqueta_1)
				@lista_doble2.insertar_elemento(@etiqueta_2)
				@lista_doble2.insertar_elemento(@etiqueta_3)
				@lista_doble2.insertar_elemento(@etiqueta_4)
				@lista_doble2.insertar_elemento(@etiqueta_5)
				
				expect(@lista_doble2.head.value).to eq(@etiqueta_5)
				expect(@lista_doble2.head.next.value).to eq(@etiqueta_4)
				expect(@lista_doble2.head.next.next.value).to eq(@etiqueta_3)
				expect(@lista_doble2.head.next.next.next.value).to eq(@etiqueta_2)
				expect(@lista_doble2.tail.value).to eq(@etiqueta_1)
			end
		end
end
    



context "Jerarquia" do
    	
          		describe "Comprobar la herencia" do
          		  
            			it "TProducto es una clase herencia de EtiquetaN" do
            				expect(@producto_1.is_a? TProducto).to eq(true)
            				expect(@producto_1.kind_of? EtiquetaN).to eq(true)
            			end
            			
            			it "EtiquetaN no es una clase herencia de TProducto" do
            			  
            			   expect(@etiqueta_1.is_a? EtiquetaN).to eq(true)
            			   expect(@etiqueta_1.kind_of? TProducto).to eq(false)
            			end
          			
          			
          		end
    end




context "Comparable" do
		
		describe "Comprobando clase EtiquetaN comparable" do
			
			it "Comprobando primera etiquetan tiene menor proteinas que la segunda" do
				expect(@etiqueta_2 < @etiqueta_1).to be true
			end
		
			it "Comprobando primera etiqueta tiene mayor proteinas que la segunda" do
				expect(@producto_1 > @etiqueta_5).to be true
			end
			
			it "Comprobando primera etiqueta tiene menor o igual proteinas que la segunda" do
				expect(@etiqueta_4 <= @etiqueta_4).to be true
			end
			
			it "Comprobando primera etiqueta tiene mayor o igual proteinas que la segunda" do
				expect(@etiqueta_2 >= @etiqueta_5).to be true
			end
			
			it "Comprobando primera etiqueta tiene distintas proteinas que la segunda" do
				expect(@etiqueta_1 == @etiqueta_3).to be false	
			end
		end
	end



context "Enumerable" do
		
		describe "Comprobancion clase Lista_doble enumerable" do
			
			it "Minimo de la lista" do
				@lista_doble2.insertar_elemento(@etiqueta_1)
				@lista_doble2.insertar_elemento(@etiqueta_2)
				@lista_doble2.insertar_elemento(@etiqueta_3)
				@lista_doble2.insertar_elemento(@etiqueta_4)
				@lista_doble2.insertar_elemento(@etiqueta_5)
				@lista_doble2.insertar_elemento(@producto_1)
				
				expect(@lista_doble2.min).to eq(@etiqueta_5)
			end
			
			it "Maximo de la lista" do
				@lista_doble2.insertar_elemento(@etiqueta_1)
				@lista_doble2.insertar_elemento(@etiqueta_2)
				@lista_doble2.insertar_elemento(@etiqueta_3)
				@lista_doble2.insertar_elemento(@etiqueta_4)
				@lista_doble2.insertar_elemento(@etiqueta_5)
				@lista_doble2.insertar_elemento(@producto_1)
				
				expect(@lista_doble2.max).to eq(@etiqueta_1)
			end
			
			it "Orden de la lista" do
				@lista_doble2.insertar_elemento(@etiqueta_1)
				@lista_doble2.insertar_elemento(@etiqueta_2)
				@lista_doble2.insertar_elemento(@etiqueta_3)
				@lista_doble2.insertar_elemento(@etiqueta_4)
				@lista_doble2.insertar_elemento(@etiqueta_5)
				@lista_doble2.insertar_elemento(@producto_1)
				
				
				expect(@lista_doble2.sort).to eq([@etiqueta_5, @etiqueta_3, @etiqueta_4, @etiqueta_2, @producto_1, @etiqueta_1])
			end
			
			
			it "Collect de la lista" do
			@lista_doble2.insertar_elemento(@etiqueta_1)
			@lista_doble2.insertar_elemento(@etiqueta_2)
			@lista_doble2.insertar_elemento(@etiqueta_3)
			@lista_doble2.insertar_elemento(@etiqueta_4)
			@lista_doble2.insertar_elemento(@etiqueta_5)
			@lista_doble2.insertar_elemento(@producto_1)
			
			expect(@lista_doble2.collect{0}).to eq([0, 0, 0, 0, 0, 0])
			end

		end
	end









end