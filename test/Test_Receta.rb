#Mayra Garcia, LPP
#Test, clase: Receta
require 'lib/receta.rb'
require "test/unit"

#Clase que testea a nuestra clase Receta
class Testreceta < Test::Unit::TestCase
    
    #Variable objeto para pruebas
    def setup
        @Objeto= Receta.new()
    end
    
    
    #..........................................................................
    
    def test_cabecera
        var="Receta de: patatas al horno\n ===============\n \n"
        assert((var.instance_of? String), "No es una cadena")
        assert_equal(var, @Objeto.mostrar_cabecera('patatas al horno'))
    end
    
    
    #..........................................................................
    
    def test_Porciones_tiempo
        por=3 #porciones enteras aunque tambien se puede medias pero usa float
        assert((por.instance_of? Fixnum), "No es numero")
        
        time=4 #siempre en minutos
        assert((time.instance_of? Fixnum), "No es un numero")
        
        
        var= "Porciones: #{por}\n Tiempo de preparacion: #{time} minutos\n"
        assert_equal(var, @Objeto.mostrar_porciones_t_espera(por,time))
    end
    
    
    #..........................................................................
    
    
    def test_Ingredientes
        var="patatas,queso,tomates,cebolla,cilantro"
        assert((var.instance_of? String), "No es una cadena")
        
        var2="\nIngredientes:\npatatas\nqueso\ntomates\ncebolla\ncilantro"
        assert_equal(var2, @Objeto.ingredientes(var))
    end
    
    
    #..........................................................................
    
    
    def test_instrucciones
        var='Ponga hervir el agua,Añada la pasta,deje hervir durante 6 minutos,Escurra el agua,Mezcle la salsa de tomate y la pimienta con la pasta,Sirva caliente'
              
        assert((var.instance_of? String), "No es una cadena")
        
        var2="\nInstrucciones:\n1) Ponga hervir el agua\n2) Añada la pasta\n3) deje hervir durante 6 minutos\n4) Escurra el agua\n5) Mezcle la salsa de tomate y la pimienta con la pasta\n6) Sirva caliente\n"
        
        assert_equal(var2, @Objeto.instrucciones(var))
        
    end
    
 
end


