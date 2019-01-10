require 'spec_helper'
require 'benchmark'

RSpec.describe Menuds do

    
    before :all do
        @menu = Menuds.new("Lunes", "Semana 1") do
            titulo      "Bajo en calorias"
            cantidad     :min => 30, 
                         :max => 35
            desayuno    :descripcion => "Panecillo",
                        :porcion => "1 rodaja",
                        :gramos => 100,
                        :grasas => 3.3,
                        :carbohidratos => 54.0,
                        :proteinas => 11.0,
                        :fibra => 2.3,
                        :sal => 0.06
            desayuno    :descripcion => "Actimel",
                        :porcion => "1 porcion",
                        :gramos => 100,
                        :grasas => 3.4,
                        :carbohidratos => 4.4,
                        :proteinas => 3.6,
                        :sal => 0.05
            almuerzo    :descripcion => "Arroz",
                        :porcion => "1 taza",
                        :gramos => 100,
                        :grasas => 0.9,
                        :carbohidratos => 81.6,
                        :proteinas => 6.67,
                        :fibra => 1.4,
                        :sal => 0.04
            almuerzo    :descripcion => "Lentejas",
                        :porcion => "1/2 cucharon",
                        :grasas => 0.4,
                        :carbohidratos => 20.0,
                        :proteinas => 9.0,
                        :fibra => 8.0,
                        :sal => 0.02
            almuerzo      :descripcion => "Naranja",
                        :porcion => "1 pieza",
                        :gramos => 100,
                        :grasas => 0.12,
                        :carbohidratos => 11.75,
                        :proteinas => 0.94,
                        :fibra => 2.4
            cena        :descripcion => "Leche entera",
                        :porcion => "1 vaso",
                        :gramos => 100,
                        :grasas => 3.6,
                        :carbohidratos => 4.6,
                        :proteinas => 3.1,
                        :sal => 0.13
        end
    end
    
    
    
        it "Existe un dia" do
            expect(@menu.dia).to eq("Lunes")
        end
        
        it "Existe un tiempo estimado" do
            expect(@menu.tiempo_estimado).to eq([" 30 35"])
        end
        
        it "Existe un titulo de menu" do
            expect(@menu.titulo_m).to eq("Bajo en calorias")
        end
        
        it "Existe un desayuno" do
            expect(@menu.desayunos).not_to eq(nil)
        end
        
        it "imprimir la tabla para ver la salida del to_s" do
            expect(@menu.show)
        end
    
        it "Valores del Desayuno" do
            
        expect(@menu.desayunos).to eq(["\n'Panecillo' (1 rodaja) (100) (3.3) (54.0) (11.0) (2.3) (0.06)          299.26" , "\n'Actimel' (1 porcion) (100) (3.4) (4.4) (3.6) (0.05)          62.9"])    
            
        end
        
        it "Existe un Almuerzo" do
            
            expect(@menu.almuerzos).not_to eq(nil)
            
        end
        
        it "Valores del Almuerzo" do
            
         expect(@menu.almuerzos).to eq(["\n'Arroz' (1 taza) (100) (0.9) (81.6) (6.67) (1.4) (0.04)        367.02", "\n'Lentejas' (1/2 cucharon) (0.4) (20.0) (9.0) (8.0) (0.02)        151.72", "\n'Naranja' (1 pieza) (100) (0.12) (11.75) (0.94) (2.4)        61.44"])   
            
        end
        
        
        it "Existe una cena" do
            
        expect(@menu.cenas).not_to eq(nil)
        
        end
        
        it "Valores de la Cena" do
            
         expect(@menu.cenas).to eq(["\n'Leche entera' (1 vaso) (100) (3.6) (4.6) (3.1) (0.13)         63.98"])   
            
        end
        
        
        it " Valor del Venergeticot" do
            
        expect(@menu.venergeticot).to eq(1006.3200000000002)
            
        end
        
        it "Existe el to_s" do
        
        expect(@menu.to_s).to eq("
Lunes   Semana 1   Bajo en calorias          Composición Nutricional
============================================================
             porcion     gramos grasas carbohidratos proteinas fibra sal venergetico

Desayuno
'Panecillo' (1 rodaja) (100) (3.3) (54.0) (11.0) (2.3) (0.06)          299.26

'Actimel' (1 porcion) (100) (3.4) (4.4) (3.6) (0.05)          62.9

Almuerzo
'Arroz' (1 taza) (100) (0.9) (81.6) (6.67) (1.4) (0.04)        367.02

'Lentejas' (1/2 cucharon) (0.4) (20.0) (9.0) (8.0) (0.02)        151.72

'Naranja' (1 pieza) (100) (0.12) (11.75) (0.94) (2.4)        61.44

Cena
'Leche entera' (1 vaso) (100) (3.6) (4.6) (3.1) (0.13)         63.98

Venergeticot 1006.32\n")
            
        end
    
end