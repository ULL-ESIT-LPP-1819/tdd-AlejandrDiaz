require 'spec_helper'
require 'ietiqueta/ietiqueta'



describe EInformacionN do
    
    before :each do
        
        
        @etiqueta = EInformacionN.new("Rufles Jamon", 32.5, 3.0, 49.6, 1.8, 4.3, 6.5, 1.7)
        
    end
    
    it "Debe existir un nombre para la etiqueta" do
    expect(@etiqueta.get_nombetiqueta).to eq("Rufles Jamon")
    
    end
    
    it "Debe existir la cantidad de grasas en gramos" do
    expect(@etiqueta.get_cangrasas).to eq(32.5)
    
    end
    
    it "Debe existir la cantidad de grasas saturadas en gramos" do
    expect(@etiqueta.get_cangrasasat).to eq(3.0)
    
    end
    
    it "Debe existir la cantidad de hidratos de carbono en gramos " do
    expect(@etiqueta.get_hidratoscarb).to eq(49.6)
    
    end
    
    it "Debe existir la cantidad de azucares en gramos " do
    expect(@etiqueta.get_cantazucares).to eq(1.8)
    
    end

    it "Debe existir la cantidad de fibra alimentaria en gramos " do
    expect(@etiqueta.get_cantfibra).to eq(4.3)
    
    end
    
    it "Debe existir la cantidad de proteinas en gramos " do
    expect(@etiqueta.get_cantproteinas).to eq(6.5)
    
    end
    
    it "Debe existir la cantidad de sal en gramos " do
    expect(@etiqueta.get_cantsal).to eq(1.7)
    
    end
    
    it "Debe existir un metodo para obtener el nombre de la etiqueta" do
        
    expect(@etiqueta).to respond_to(:get_nombetiqueta)
    
    end
    
    it "Debe existir un metodo para obtener el valor energetico en kJ" do
        
    expect(@etiqueta).to respond_to(:get_valenergeticokJ)
    
    end
    
    it "Debe existir un metodo para obtener el valor energetico en kcal" do
        
    expect(@etiqueta).to respond_to(:get_valenergeticokcal)
    
    end
    
    it "Debe existir un metodo para obtener la cantidad de grasas" do
        
    expect(@etiqueta).to respond_to(:get_cangrasas)
    
    end
    
    it "Debe existir un metodo para obtener la cantidad de grasas saturadas" do
        
    expect(@etiqueta).to respond_to(:get_cangrasasat)
    
    end
    
    it "Debe existir un metodo para obtener la cantidad de hidratos de carbono" do
        
    expect(@etiqueta).to respond_to(:get_hidratoscarb)
    
    end
    
    it "Debe existir un metodo para obtener la cantidad de hidratos de azucares" do
        
    expect(@etiqueta).to respond_to(:get_cantazucares)
    
    end
    
    it "Debe existir un metodo para obtener la cantidad de fibra alimentaria" do
        
    expect(@etiqueta).to respond_to(:get_cantfibra)
    
    end
    
    it "Debe existir un metodo para obtener la cantidad de proteinas" do
        
    expect(@etiqueta).to respond_to(:get_cantproteinas)
    
    end
    
    it "Debe existir un metodo para obtener la cantidad de sales " do
        
    expect(@etiqueta).to respond_to(:get_cantsal)
    
    end
    
    it "Debe existir un metodo para obtener el nombre de la etiqueta formateado " do
        
    expect(@etiqueta).to respond_to(:to_s)
    
    end
    
    it "Debe existir un metodo para obtener la cantidad de grasas formateada " do
        
    expect(@etiqueta).to respond_to(:to_f)
    
    end
    
    
    
end
