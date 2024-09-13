# Tarea: 
# Desarrollar Informe de notas done muestre lo más ordenado posible: 
# el nombre del estudiante, su curso, sus notas por asignatura y su promedio por asignatura y al final: su promedio final
# Aplicar lógica de promedios por asignatura para el curso
# Puntos extra: Destacar los primeros 3 lugares por asignatura y del curso

class Estudiante
  attr_accessor :nombre, :notas

  def initialize(nombre, notas)
    @nombre = nombre
    # @notas es un Hash donde cada llave/key es la asignatura y los values/valores son el arreglo de notas
    @notas = notas
  end

  def agregar_nota(nota, asignatura)
    if nota >= 1.0 && nota <= 7.0  
      @notas[asignatura.to_sym] << nota
    else
      puts "Error al ingresar la nota #{nota} del alumno #{@nombre} en la asignatura #{asignatura}"
    end
  end
  
  def calcular_promedio_asignatura(asignatura)
    notas = @notas[asignatura]

    if notas.nil? || notas.empty?
      return nil
    else
      promedio_asignatura = notas.sum / notas.size.to_f
      return promedio_asignatura.round(1)
    end
  end
  
  def calcular_promedio_final
    promedios_asignaturas = []
    @notas.each do |asignatura, notas|
      promedios_asignaturas << calcular_promedio_asignatura(asignatura)
    end
    promedio_final = promedios_asignaturas.sum.to_f / promedios_asignaturas.size
    return promedio_final.round(1)
  end

  def notas_por_asignatura
    @notas.each do |asignatura, notas|
      promedio_asignatura = calcular_promedio_asignatura(asignatura)
      puts "#{asignatura.to_s}: #{notas.join(', ')} - Promedio: #{promedio_asignatura}"
    end
  end

  def informe_de_notas
    puts "\n---------------------------"
    puts "Informe de notas del alumno \n#{@nombre}"
    puts "---------------------------"
    @notas.each do |asignatura, notas|
      promedio_asignatura = calcular_promedio_asignatura(asignatura)
      puts "#{asignatura.to_s}: #{notas.join(', ')} - Promedio: #{promedio_asignatura}"
    end
    puts "---------------------------"
    puts "Promedio final: #{calcular_promedio_final}"
  end

end



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
      calc_prom_estudiante = estudiante.calcular_promedio_final
      prom_estudiantes.push(calc_prom_estudiante)
    end
    prom_curso = prom_estudiantes.sum.to_f / estudiantes.length
    puts "El promedio de notas del curso #{@nombre} es: #{prom_curso.round(1)} (#{estudiantes.length} estudiantes)"
  end

  def calcular_ranking(asignatura)
    rankings = estudiantes.sort_by { |estudiante| estudiante.calcular_promedio_asignatura(asignatura) }.reverse
    ranking_top_3 = rankings.take(3)
    puts "\n---------------------------"
    puts "Ranking notas alumnos #{@nombre} en #{asignatura}"
    puts "---------------------------"
    ranking_top_3.each_with_index do |estudiante, index|
      puts "Top #{index + 1} en #{asignatura}: #{estudiante.nombre} - Promedio: #{estudiante.calcular_promedio_asignatura(asignatura.to_sym)}"
      # NO OLVIDAR Cuando estoy iterando tengo que pasar la asignatura como sym si no no lo toma
    end
    return ranking_top_3
  end

  def calcular_ranking_final
    rankings = estudiantes.sort_by { |estudiante| estudiante.calcular_promedio_final }.reverse
    puts "\n---------------------------"
    puts "Ranking notas alumnos #{@nombre}"
    puts "---------------------------"
    rankings.each_with_index do |estudiante, index|
      if index < 3
        puts "Top #{index + 1} del curso #{@nombre}: #{estudiante.nombre} - Promedio final: #{estudiante.calcular_promedio_final}"
      end
    end
  end

  def informe_notas_curso
    estudiantes.each do |estudiante|
      estudiante.informe_de_notas
    end
  end

end


estudiantes = [
  Estudiante.new("Mario", {
    "matematica": [3.0, 4.5],
    "lenguaje": [5.0, 5.0],
    "ciencias": [2.5, 6.5],
    "historia": [6.5, 6.0],
    "artes": [7.0, 7.0]
  }),
  Estudiante.new("Ana", {
    "matematica": [6.0, 6.5],
    "lenguaje": [7.0, 6.5],
    "ciencias": [6.5, 6.5],
    "historia": [6.5, 6.7],
    "artes": [7.0, 7.0]
  }),
  Estudiante.new("Elias", {
    "matematica": [4.0, 4.0],
    "lenguaje": [4.0, 4.5],
    "ciencias": [4.5, 5.5],
    "historia": [4.5, 5.0],
    "artes": [5.0, 5.0]
  }),
  Estudiante.new("Sofía", {
    "matematica": [3.5, 4.0],
    "lenguaje": [5.0, 4.5],
    "ciencias": [5.5, 6.5],
    "historia": [6.5, 6.0],
    "artes": [7.0, 7.0]
  }),
  Estudiante.new("Aurora", {
    "matematica": [6.8, 6.9],
    "lenguaje": [6.0, 6.5],
    "ciencias": [6.5, 6.5],
    "historia": [6.5, 6.0],
    "artes": [7.0, 5.8]
  })
]
curso_1A = Curso.new("1A", estudiantes)


curso_1A.calcular_ranking("ciencias")
curso_1A.calcular_ranking_final
curso_1A.informe_notas_curso

