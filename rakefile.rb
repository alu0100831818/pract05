#Mayra Garcia, LPP
#Rakefile, clase: Receta

#Probar test cabecera
task :cabecera do
  sh "ruby -I. test/Test_Receta.rb -n test_Ingredientes"
end

#Probar test porciones y tiempo
task :Porciones_tiempo do
  sh "ruby -I. test/Test_Receta.rb -n test_Porciones_tiempo"
end

#Probar test ingredientes
task :Ingredientes do
  sh "ruby -I. test/Test_Receta.rb -n test_Ingredientes"
end

#Probar test instrucciones
task :instrucciones do
  sh "ruby -I. test/Test_Receta.rb -n test_instrucciones"
end

#Probar todos los test
task :all do
  sh "ruby -I. test/Test_Receta.rb"
end


task :default => [:cabecera, :Porciones_tiempo]
task :default => [:all]
