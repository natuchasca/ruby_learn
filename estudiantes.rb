### Ejercicio 5: Sistema de gestión de estudiantes
# ** Descripción: **
# Crea una clase `Estudiante` con los atributos `nombre` y `notas` (un arreglo de números). Define métodos para:
# ** Agregar una nota **.
# ** Calcular el promedio ** de las notas.


class Estudiante
  attr_accessor :nombre, :notas

  def initialize(nombre, notas)
    @nombre = nombre
    @notas = notas
    # @notas = []
  end

  def agregar_nota(nota)
    # Validar notas en el rango
    if nota >= 1.0 && nota <= 7.0
      notas.push(nota) # notas << nota
      puts "Se agregó la nota #{nota} al estudiante #{nombre}. \nLas notas de #{nombre} ahora son: #{notas}"
    else
      puts "Ingrese una nota válida entre 1.0 a 7.0"
    end
  end

  def calcular_promedio(notas)
    promedio = notas.sum.to_f / notas.length
    puts "El promedio de notas del estudiante #{nombre} es #{promedio.round(1)}"
    return promedio.round(1)
  end

  def calc_prom_asignatura(asignatura)
    @notas[asignatura.to_sym].sum.to_f / @notas[asignatura.to_sym].length
  end

  def prom_final
    promedios_asignaturas = @asinaturas.map(&:calc_prom_asignatura)
    promedios_asignaturas.sum / promedios_asignaturas.size.to_f
  end

end


notas_estudiante_1 = [6.5, 7.0, 4.0, 3.5, 6.5, 7.0]
estudiante_1 = Estudiante.new("Juanito", notas_estudiante_1)
puts "Se ha creado el estudiante #{estudiante_1.nombre}"
estudiante_1.agregar_nota(3.0)
estudiante_1.calcular_promedio(notas_estudiante_1)
estudiante_1.agregar_nota(7.0)
estudiante_1.calcular_promedio(notas_estudiante_1)


# Crea una clase `Curso` que contenga un arreglo de estudiantes. 
# Define un método para agregar estudiantes al curso 
# y otro método para calcular el promedio de notas de todos los estudiantes en el curso.

class Curso
  attr_accessor :nombre, :estudiantes

  def initialize(nombre, estudiantes)
    @nombre = nombre
    @estudiantes = estudiantes
  end

  def agregar_estudiante(estudiante)
    @estudiantes.push(estudiante)
    # @estudiantes << estudiante
    puts "Se ha agregado el nuevo estudiante #{estudiante.nombre} al curso"
  end

  def promedio_curso
    # Validar que curso tenga estudiantes
    return "El curso #{@nombre} no tiene estudiantes" if @estudiantes.empty?
    # total_notas = @estudiantes.flap_map(&:notas) flatten toma un arreglo de arreglos en un solo arreglo
    prom_estudiantes = []
    estudiantes.each do | estudiante|
      # Calculo el promedio de todos los estudiantes y lo agrego en un nuevo Array para luego sacar el promedio de ese
      calc_prom_estudiante = estudiante.calcular_promedio(estudiante.notas)
      prom_estudiantes.push(calc_prom_estudiante)
    end
    puts "Las notas promedio del curso #{@nombre} son #{prom_estudiantes}"
    prom_curso = prom_estudiantes.sum.to_f / estudiantes.length
    puts "El promedio de notas del curso #{@nombre} es: #{prom_curso.round(1)} (#{estudiantes.length} estudiantes)"
  end

end


estudiantes = [
  Estudiante.new("Mario", [2.5, 4.0, 4.0, 4.5, 4.5, 5.0]),
  Estudiante.new("Elias", [6.5, 7.0, 4.3, 3.5, 6.5, 7.0]),
  Estudiante.new("Sofía", [6.5, 7.0, 6.0, 6.5, 6.5, 7.0])
]
curso_1A = Curso.new("1A", estudiantes)
puts "El curso #{curso_1A.nombre} tiene #{curso_1A.estudiantes.length} estudiantes"

nuevo_estudiante = Estudiante.new("Aurora", [7.0, 7.0, 6.0, 6.5, 6.5, 7.0])
curso_1A.agregar_estudiante(nuevo_estudiante)
puts "El curso #{curso_1A.nombre} tiene #{curso_1A.estudiantes.length} estudiantes"

curso_1A.promedio_curso


# Puntos extras: si quieren agregar asignaturas
# Puntos extras: si usan map

