class Persona
  attr_accessor :nombre, :edad, :peso
  require 'date'

  # Método inicializador
  def initialize(nombre, edad, peso)
    @nombre = nombre
    @edad = edad
    @peso = peso
  end

  # Método para saludar
  def saludar
    puts "¡Hola! Me llamo #{@nombre}, tengo #{@edad} años."
  end

  # Método para decir el peso actual
  def decir_peso
    puts "Mi peso actual es #{@peso} kg."
  end

  # Método para subir de peso
  def subir_peso(kilos)
    @peso += kilos
    puts "He subido #{kilos} kg. Ahora peso #{@peso} kg."
  end

  # Método para bajar de peso
  def bajar_peso(kilos)
    @peso -= kilos
    puts "He bajado #{kilos} kg. Ahora peso #{@peso} kg."
  end

  # TAREA 1: defina un método para cumplir años
  # Obtengo su fecha de cumpleaños para hacer el +1 cuando corresponda
  def happy_birthday
    print "Ingresa tu fecha de cumpleaños (dd/mm): "
    birthday_input = gets.chomp
    birthday_day, birthday_month = birthday_input.split('/').map(&:to_i)
    birthday = Date.new(Date.today.year, birthday_month, birthday_day)

    print "Ingresa tu edad actual: "
    age = gets.to_i

    today = Date.today
    if today.month == birthday.month && today.day == birthday.day
      new_age = age + 1
      puts "¡Feliz cumpleaños! Ahora tienes #{new_age} años."
    else
      puts "Tienes #{new_age} años, aun no es tu cumpleaños"
    end
  end


end

# Creando una instancia de Persona
persona1 = Persona.new("Ana", 25, 60)

# Usando los métodos
persona1.saludar       # ¡Hola! Me llamo Ana, tengo 25 años.
persona1.decir_peso    # Mi peso actual es 60 kg.
persona1.subir_peso(5) # He subido 5 kg. Ahora peso 65 kg.
persona1.bajar_peso(3) # He bajado 3 kg. Ahora peso 62 kg.
persona1.happy_birthday



