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
    
    
    
end
