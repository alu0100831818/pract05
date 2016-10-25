
class Receta
    attr_reader :ing,:po,:ins
    def initialize
        #puts "CREACION DE RECETA \n\n"
    end
    
    def mostrar_cabecera(nombre_receta)
        @nom=nombre_receta
        puts "Receta de: #{ @nom}\n ===============\n \n"
    end
    
    #mostrar cabecera simple
    def mcs(nombre_receta)
        #"#{nombre_receta} \n mayra"
        "#{nombre_receta}"
    end
    
    
    def mostrar_porciones_t_espera(a,b)
        @a,@b=a,b
       #puts "#{@ing} \n #{@po} \n #{@ins}"
        puts "Porciones: #{ @a}\n Tiempo de preparacion: #{@b} minutos\n"
    end
    
    #mostrar porciones
    def mp(a)
       "Porciones: #{a} "
    end
    
    #mostrar tiempo de espera
    def mte(a)
       "Tiempo de espera: #{a} "
    end
    
    
    def ingredientes(ingre)
        @ing= ingre.split(',')
        puts "\nIngredientes:\n"
        (@ing.length).times do |cont|
            puts "#{ing[cont]}"
        end
        
    end
    
    def instrucciones(instruc)
        @ins= instruc.split(",")
        puts "\nInstrucciones:\n"
        
        (@ins.length).times do |cont|
            puts "#{cont+1}) #{ins[cont]}"
        end
    end
    
    
end

#d = Receta.new()  
#d.mostrar_cabecera('pollo')
#d.mostrar_porciones(2,3)
#d.ingredientes('2 rebanadas de pan, 1 loncha de jamon, 1 loncha de queso, mantequilla al gusto')
#d.instrucciones('Ponga hervir el agua.
#,Añada la pasta
#,deje hervir durante 6 minutos. 
#,Escurra el agua.
#,Mezcle la salsa de tomate y la pimienta con la pasta.
#,Sirva caliente.')
















