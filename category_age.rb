# Ejercicio: Verificación de Edad
# Escribe un programa en Ruby que solicite al usuario su edad y luego determine en qué categoría de edad se encuentra. Las categorías son las siguientes:
# Menor de edad: Si la edad es menor que 18.
# Adulto joven: Si la edad está entre 18 y 30.
# Adulto: Si la edad está entre 31 y 60.
# Adulto mayor: Si la edad es mayor que 60.

def category_age
  print "Enter your age: "
  age = gets.chomp.to_i
  
  # Usando IF
	if (age < 0)
    puts "Error: Ingresa una edad válida (#{age})"
  elsif (age < 18)
    puts "Eres menor de edad"
  elsif (age > 18 || age < 30)
    puts "Eres Adulto Joven"
  elsif (age > 30 || age < 60)  
    puts "Eres Adulto"
  elsif (age > 60)
    puts "Eres Adulto Mayor"
  else
    puts "Error: Ingresa una edad válida (#{age})"
  end

  # Usando CASE
  # case age
  # when 0..17
  #   puts "Eres menor de edad"
  # when 18..29
  #   puts "Eres Adulto Joven"
  # when 30..59
  #   puts "Eres Adulto"
  # when 60..Float::INFINITY
  #   puts "Eres Adulto Mayor"
  # else
  #   "Error: Ingresa una edad valida (#{age})"
  # end

end

category_age

