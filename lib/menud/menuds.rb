
class Menuds 
    
    attr_accessor :dia, :semana, :titulo_m, :tiempo_estimado, :desayunos, :almuerzos, :cenas, :venergetico, :venergeticot
    
    
    
    def initialize(dia, semana, &block) 
        
       @dia=dia
       @semana=semana
       @tiempo_estimado= []
       @titulo_m
       @desayunos= []
       @almuerzos= []
       @cenas= []
       @venergetico=nil
       @venergeticot=0
       
       
        if block_given?  
          if block.arity == 1
            yield self
          else
           instance_eval(&block) 
          end
        end
    end
    
    
    
    def titulo(nombre_menu)
        
        @titulo_m=nombre_menu
        
    end
    
    
    def calc_venergetico(grasas, carbohidratos, proteinas, fibra, sal)
        
        if fibra == nil then fibra = 0.0 end
        if grasas == nil then grasas = 0.0 end
        if carbohidratos == nil then carbohidratos = 0.0 end
        if proteinas == nil then proteinas = 0.0 end
        if sal == nil then sal = 0.0 end

        @venergetico = (grasas * 9) + (carbohidratos * 4) + (proteinas * 4) + (fibra * 4) + (sal * 6)
        @venergeticot += @venergetico
        
    end
       
       
     
     def cantidad(options = {})  
       
          tiempo_e = " #{options[:min]}" if options[:min]
          
          tiempo_e << " #{options[:max]}" if options[:max]
          
          @tiempo_estimado << tiempo_e
        
       
     end
       
       
     def desayuno(options = {})
         
         desayunoss = "\n'#{options[:descripcion]}'" if options[:descripcion]
         desayunoss << " (#{options[:porcion]})" if options[:porcion]
         desayunoss << " (#{options[:gramos]})" if options[:gramos]
         desayunoss << " (#{options[:grasas]})" if options[:grasas]
         desayunoss << " (#{options[:carbohidratos]})" if options[:carbohidratos]
         desayunoss << " (#{options[:proteinas]})" if options[:proteinas]
         desayunoss << " (#{options[:fibra]})" if options[:fibra]
         desayunoss << " (#{options[:sal]})" if options[:sal]
         
         calc_venergetico(options[:grasas], options[:carbohidratos], options[:proteinas], options[:fibra], options[:sal])
         
    
         desayunoss << sprintf("%5s", "          #{@venergetico}")
         
         @desayunos << desayunoss

         
         
     end
     
     def almuerzo(options = {})
         
         almuerzoss = "\n'#{options[:descripcion]}'" if options[:descripcion]
         almuerzoss << " (#{options[:porcion]})" if options[:porcion]
         almuerzoss << " (#{options[:gramos]})" if options[:gramos]
         almuerzoss << " (#{options[:grasas]})" if options[:grasas]
         almuerzoss << " (#{options[:carbohidratos]})" if options[:carbohidratos]
         almuerzoss << " (#{options[:proteinas]})" if options[:proteinas]
         almuerzoss << " (#{options[:fibra]})" if options[:fibra]
         almuerzoss << " (#{options[:sal]})" if options[:sal]
         
         calc_venergetico(options[:grasas], options[:carbohidratos], options[:proteinas], options[:fibra], options[:sal])
         
    
         almuerzoss << sprintf("%5s", "        #{@venergetico.round(3)}")
         
         @almuerzos << almuerzoss

         
         
     end
       
       
       
       
     def cena(options = {})
         
     cenass = "\n'#{options[:descripcion]}'" if options[:descripcion]
     cenass << " (#{options[:porcion]})" if options[:porcion]
     cenass << " (#{options[:gramos]})" if options[:gramos]
     cenass << " (#{options[:grasas]})" if options[:grasas]
     cenass << " (#{options[:carbohidratos]})" if options[:carbohidratos]
     cenass << " (#{options[:proteinas]})" if options[:proteinas]
     cenass << " (#{options[:fibra]})" if options[:fibra]
     cenass << " (#{options[:sal]})" if options[:sal]
     
     calc_venergetico(options[:grasas], options[:carbohidratos], options[:proteinas], options[:fibra], options[:sal])
     

     cenass << sprintf("%5s", "         #{@venergetico}")
     
     @cenas << cenass

         
         
     end
       
       
    def to_s
         
         output = "\n" + @dia + "   " + @semana + "   " + @titulo_m + "          Composición Nutricional"
        output << "\n#{'=' * 60}\n"
        
        cabecera = sprintf("%20s %10s %5s %5s %3s %3s %3s %3s\n","porcion", "gramos", "grasas", "carbohidratos", "proteinas", "fibra", "sal", "venergetico")
    
        output << cabecera
        
        output << "\nDesayuno"
        
        @desayunos.each do |x|
            
            output << "#{x}\n"
        end
        
        output << "\nAlmuerzo"
        
        @almuerzos.each do |j|
            
            output << "#{j}\n"
            
        end
        
        output << "\nCena"
        
        @cenas.each do |k|
            
            output << "#{k}\n" + "\n"
            
        end
        
        
        output << "\Venergeticot #{@venergeticot.round(3)}" + "\n"
        
        output
             
         
    end
       
    def show
        
        output = "\n" + @dia + "   " + @semana + "   " + @titulo_m + "          Composición Nutricional"
        output << "\n#{'=' * 60}\n"
        
        cabecera = sprintf("%20s %10s %5s %5s %3s %3s %3s %3s\n","porcion", "gramos", "grasas", "carbohidratos", "proteinas", "fibra", "sal", "venergetico")
    
        output << cabecera
        
        output << "\nDesayuno"
        
        @desayunos.each do |x|
            
            output << "#{x}\n"
        end
        
        output << "\nAlmuerzo"
        
        @almuerzos.each do |j|
            
            output << "#{j}\n"
            
        end
        
        output << "\nCena"
        
        @cenas.each do |k|
            
            output << "#{k}\n" + "\n"
            
        end
        
        
        output << "\Venergeticot #{@venergeticot.round(3)}" + "\n"
        
             
             
             
         
         
         
    end
       
    
    
end


#b = Menuds.new("Lunes", "Semana 1")

#b.show