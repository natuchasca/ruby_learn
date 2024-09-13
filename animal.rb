class Animal
  attr_accessor :nombre, :especie, :tipo

  def initialize(nombre, especie, tipo)
    @nombre = nombre
    @especie = especie
    @tipo = tipo
  end

  def datos
    puts "Este animal es #{@nombre}, es un/a #{@especie} de tipo #{@tipo}."
  end

  def edad(edad)
    puts "#{@nombre} tiene #{edad} años."
  end

  def estado(salud)
    puts "#{@nombre} está #{salud}."
  end

end

animal1 = Animal.new("Blanquito", "felino", "mamifero")
animal1.datos
animal1.edad(8)
animal1.estado("saludable")