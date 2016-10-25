
class Receta
    
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
        var= "\nInstrucciones:"
        
        (@ins.length).times do |cont|
            var+="#{cont+1}) #{@ins[cont]}"
        end
        #devolvemos la variable que contiene las lineas
        "#{var}"
    end
 
end

















