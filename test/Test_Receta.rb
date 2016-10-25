
require './lib/receta.rb'
require "test/unit"

 #.instance_of? vb 
class TestCabecera < Test::Unit::TestCase
    
    def setup
        @Objeto= Receta.new()
    end
 
    def test_cabecera
        var="Receta de: patatas al horno\n ===============\n \n"
        assert_equal(var, @Objeto.mostrar_cabecera('patatas al horno'))
    end
    
    def test_Porciones_tiempo
        por=3 #porciones enteras aunque tambien se puede medias pero usa float
        assert((por.instance_of? Fixnum), "No es numero")
        
        time=4 #siempre en minutos
        assert((time.instance_of? Fixnum), "No es un numero")
        
        
        var= "Porciones: #{por}\n Tiempo de preparacion: #{time} minutos\n"
        assert_equal(var, @Objeto.mostrar_porciones_t_espera(por,time))
    end
    
    def test_Ingredientes
        var="patatas,queso,tomates,cebolla,cilantro"
        assert((var.instance_of? String), "No es una cadena")
        
        var2="\nIngredientes:\npatatas\nqueso\ntomates\ncebolla\ncilantro"
        assert_equal(var2, @Objeto.ingredientes(var))
    end
    
    def instrucciones
        var=    'Ponga hervir el agua.,Añada la pasta.
                ,deje hervir durante 6 minutos. ,Escurra el agua.
                ,Mezcle la salsa de tomate y la pimienta con la pasta.
                ,Sirva caliente.'
              
        assert((var.instance_of? String), "No es una cadena")
        
        var2="\nInstrucciones:\n
        1)Ponga hervir el agua.\n
        2)Añada la pasta.\n
        3)deje hervir durante 6 minutos.\n
        4)Escurra el agua.\n
        5)Mezcle la salsa de tomate y la pimienta con la pasta.\n
        6)Sirva caliente."
        
        assert_equal(var2, @Objeto.instrucciones(var))
        
    end
    
 
end


