# Cada ejercicio lo pueden escribir en un archivo tarea1.rb desde visual studio code, o un bloc de notas o cualquier editor que prefieran
# Pueden usar # antes o al término de una línea para dejar un comentario, ejemplo:
# hola = "hola" # string

# ---------------------------------

# Tarea 1: tener listo para la clase 2
# Averiguar cómo utilizar puts para imprimir variables de un string:
# Por ejemplo: "Acá va el valor de la variable a: -> acá poner la variable"

prueba = 5
puts "valor de variable prueba = #{prueba}"

# ---------------------------------

# Tarea 2: ejercicios: llegar avanzando para la clase 2
# Ejercicio 1: Declaración de Variables y Tipos de Datos
# Objetivo: Declarar variables de diferentes tipos de datos y asignarles valores.
# Pista/Instrucción: declarar 5 variables revisados en clase e imprimir con puts cada una de ellas.

nombre = "Natalia Torrejon"
edad = 34
tiene_mascotas = true
tipo_mascota = :cats
mascotas = ["blanquito", "Grey"]

puts nombre
puts edad
puts tiene_mascotas
puts tipo_mascota
puts mascotas

# ---------------------------------

# Ejercicio 2: Convertir Tipos de Datos
# Objetivo: Convertir una variable de un tipo de dato a otro.
# Pista/Instrucción: convertir un integer a string, convertir un string a integer usando los métodos correspondientes

puts edad.to_s
puts "101".to_i

# ---------------------------------

# Ejercicio 3: Operaciones con Integer
# Objetivo: Realizar operaciones aritméticas con variables Integer.
# Pista/Instrucción: defina una suma, resta, multiplicación y división de dos variables definidas previamente; luego imprima en pantalla los resultados

numero_1 = 22
numero_2 = 2

puts "suma: #{numero_1} + #{numero_2} = #{numero_1 + numero_2}"
puts "resta: #{numero_1} - #{numero_2} = #{numero_1 - numero_2}"
puts "multiplicación: #{numero_1} * #{numero_2} = #{numero_1 * numero_2}"
puts "división: #{numero_1} / #{numero_2} = #{numero_1 / numero_2}"

# ---------------------------------

# Ejercicio 4: Manipulación de Strings
# Objetivo: Utilizar métodos de String para manipular texto.
# Pista/Instrucción: Utilice los métodos upcase, reverse y length en una variable string ya definida y luego imprime los resultados con puts (una línea que señale: "Original: palabra", otra línea "Mayúsculas: palabra" y así con cada método).

nombre_completo = "Natalia Francisca"
puts "Original: #{nombre_completo}"
puts "Minusculas: #{nombre_completo.downcase}"
puts "Mayúsculas: #{nombre_completo.reverse}"
puts "Caracteres: #{nombre_completo.length}"

# ---------------------------------

# Ejercicio 5: Trabajo con Arrays
# Objetivo: Crear y manipular un Array utilizando métodos comunes.
# Pista/Instrucción: Manipule un array de integer definido por usted y aplique los métodos: pop, unshift(0), shift. Deje un comentario en cada línea ( #) explicando que hace cada uno e finalmente utilice puts para mostrar el arreglo final con "Array final: arreglo"

sorteo_loto = [3, 7, 12, 15, 21, 25]
sorteo_loto.pop #Muestra el ultimo numero y lo elimina del arreglo
sorteo_loto.unshift(0) #Agrega 0 al inicio del arreglo 
puts "Array Final: #{sorteo_loto}" #Devuelve [0, 3, 7, 12, 15, 21]


