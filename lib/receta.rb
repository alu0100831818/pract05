
class Receta
    attr_reader :ing,:po,:ins
    def initialize
        @@numero_ingredientes=0
        @@numero_de_pasos=0
        #puts "CREACION DE RECETA \n\n"
    end
    
    #numero de pasos para preparar la receta
    def Receta.count_pasos
         @@numero_de_pasos+=1
    end
   
    def Receta.count_ingredientes
         @@numero_ingredientes+=1
    end
    
    
    
    def mostrar_cabecera(nombre_receta)
        @nom=nombre_receta
        #puts 
        "Receta de: #{ @nom}\n ===============\n \n"
    end
    
    def mostrar_porciones_t_espera(a,b)
        @a,@b=a,b
       #puts
        "Porciones: #{ @a}\n Tiempo de preparacion: #{@b} minutos\n"
    end
    
    def ingredientes(ingre)
        @ing= ingre.split(',')
        var= "\nIngredientes:"
        
        (@ing.length).times do |cont|
            var+="\n#{@ing[cont]}"
        end
        #devolvemos la variable que contiene las lineas
        "#{var}"
        
    end
    
    
    def instrucciones(instruc)
        @ins= instruc.split(",")
        var= "\nInstrucciones:\n"
        
        (@ins.length).times do |cont|
            var+="#{cont+1}) #{@ins[cont]}\n"
            
        end
        #devolvemos la variable que contiene las lineas
        "#{var}"
    end
 
end

















