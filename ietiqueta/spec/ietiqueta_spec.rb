require 'spec_helper'




describe EInformacionN do
    
    before :each do
        
        @etiqueta_1 = EInformacionN.new("Rufles Jamon", 2216, 532, 32.5, 3.0, 49.6, 1.8, 4.3, 6.5, 1.7)
        
        @etiqueta_2 = EInformacionN.new("Pringles", 2140, 511, 32, 3.6, 51, 2.8, 2.6, 4.0, 1.4)
        
        @etiqueta_3 = EInformacionN.new("Nutella", 2273, 544, 6.0, 57.3, 56.7, 31.6, 10.9, 3.4, 0.037)
        
        @etiqueta_4 = EInformacionN.new("Chiquilin Energy", 2057, 491, 6.5, 66.0, 28.0, 22.0, 11.0, 3.6, 0.24)
        
        @etiqueta_5 = EInformacionN.new("Tortitas de Arroz", 1558, 368, 9.0, 75.0, 1.0, 3.0, 0.6, 2.7, 0.50)
        
      
      
    @lista = Lista.new
    
    @nodo1 = Nodo.new(@etiqueta_1, nil)
    @nodo2 = Nodo.new(@etiqueta_2, nil)
    @nodo3 = Nodo.new(@etiqueta_3, nil)
    @nodo4 = Nodo.new(@etiqueta_4, nil)
    @nodo5 = Nodo.new(@etiqueta_5, nil)
    
    @lista.push(@nodo1)
    @lista.push(@nodo2)
    @lista.push(@nodo3)
    @lista.push(@nodo4)
    @lista.push(@nodo5) 
      
        
        
    end
    
    

    it "Los nodos son instancia de Nodo" do 
        expect(@nodo1).to be_an_instance_of(Nodo)
        expect(@nodo2).to be_an_instance_of(Nodo) 
        expect(@nodo3).to be_an_instance_of(Nodo) 
        expect(@nodo4).to be_an_instance_of(Nodo) 
        expect(@nodo5).to be_an_instance_of(Nodo) 
    end
    
    it "La variable @lista es una instancias de Lista" do
    expect(@lista).to be_an_instance_of(Lista) 
    
    end
    
    it "Existe un elemento head en la lista" do
    expect(@lista).to respond_to(:head) 
    
    end
    
    it "Existe un metodo para comprobar si la lista esta vacía" do
    expect(@lista.esta_vacio).to eq(false) 
    
    end
    
    it "Existe un metodo para obtener un elemento de la lista de Etiquetas Nutricionales" do
    expect(@lista.obtener_elem_lista(2)).to eq(@nodo3)
    
    end
    
    it "Existe un metodo que elimina el ultimo elemento de la lista" do
    @lista.sacar
    expect(@lista.tamaño).to eq(4)
    
    end
    
    
    it "Debe existir el nombre de la Etiqueta Nutricional" do
    expect(@etiqueta_1.netiqueta).to eq("Rufles Jamon")
    
    end
    
    it "Existe un metodo para obtener la Etiqueta Nutricional formateada"do
       expect(@etiqueta_1).to respond_to(:to_s)
       expect(@etiqueta_1).to respond_to(:to_s) 
    end
    
    #it "Debe existir un conjunto de sales" do
        
      #expect(@etiqueta_1.get_conjunto_sales).to eq(1.7)
      
    #end 
    
    it "Existe el valor de la Sal en la etiqueta nutricional" do
    expect(@etiqueta_1.sales).to eq(1.7)
    
    end
    
    it "Existe el valor de la Sal en la etiqueta 2 nutricional" do
    expect(@etiqueta_2.sales).to eq(1.4)
    
    end
    
    it "Existe un metodo para obtener un elemento de la lista y el valor de la Sal de dicha Etiqueta Nutricional" do
    expect(@lista.obtener_elem_lista(1).value.sales).to eq(1.4)
    
    end
    
    #it "Existe un metodo para ordenar la cantidad de sal de cada Etiqueta" do
    
    #@lista.ordenacion_Sal
    #expect(@lista.ordenacion_Sal).to eq(5)
    
    #end
    
    
    it "Existe un metodo para obtener la menor cantidad de  Sal en las etiquetas" do
        
      expect(@lista.minsal).to eq(0.037)  
        
    end
    it "Existe un metodo para obtener la mayor cantidad de Sal en las etiquetas" do
        
      expect(@lista.maxsal).to eq(1.7)  
        
    end
    
    it "Existe un metodo para obtener la Sal de la Etiqueta Nutricional formateada"do
       expect(@etiqueta_1).to respond_to(:to_f)
    end

end
    
    


