require './lib/receta.rb'

#principal de prueba
#==============================================================
d = Receta.new()  
puts "#{d.mostrar_cabecera('pollo')}"
puts "#{d.mostrar_porciones_t_espera(2,3)}"
puts "#{d.ingredientes('2 rebanadas de pan, 1 loncha de jamon, 1 loncha de queso, mantequilla al gusto')}"
puts "#{d.instrucciones('Ponga hervir el agua.
,Añada la pasta
,deje hervir durante 6 minutos. 
,Escurra el agua.
,Mezcle la salsa de tomate y la pimienta con la pasta.
,Sirva caliente.')}"
