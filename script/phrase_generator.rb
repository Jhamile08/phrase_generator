sujeto = ["El perro", "La vaca", "La tortuga", "Mi amigo", "El Sebas"]
predicado = ["come pasto", "ladra fuerte", "corre rápido", "es muy sabio", "ama programar", "canta muy
mal"]
adjetivos = ["inteligente", "bonito"]

# Método para elegir las palabras
def calculate_noun(sujeto, predicado, adjetivos, number)
  # Barajar las listas
  shuffled_sujeto = sujeto.shuffle
  shuffled_predicado = predicado.shuffle
  shuffled_adjetivos = adjetivos.shuffle
  
  # Asegurarse de que el índice esté dentro del rango
  sujetoS = shuffled_sujeto[number % sujeto.length]
  predicadoS = shuffled_predicado[number % predicado.length]
  adjetivosS = shuffled_adjetivos[number % predicado.length]

  # Crear una oración y retornarla
  if sujetoS.length >= 8 && predicadoS.include?("programar")
    "#{sujetoS} #{adjetivosS}, #{predicadoS}!"
  elsif sujetoS.length >= 8
    "#{sujetoS} #{adjetivosS}, #{predicadoS}"
  elsif predicadoS.include?("programar")
    "#{sujetoS}, #{predicadoS}!"
  else
    "#{sujetoS}, #{predicadoS}"
  end


end

# Mensaje de bienvenida
puts "Welcome to the calculator script."
puts "Estos son los sustantivos disponibles: #{sujeto.join(', ')}"
puts "Por favor, ingresa un número para elegir un sustantivo al azar:"

# Leer entrada del usuario
input = gets.chomp

# Validar si la entrada es un número
if input.match?(/^\d+$/)
  number = input.to_i
  
  # Llamar al método y mostrar el resultado
  result = calculate_noun(sujeto, predicado, adjetivos, number)
  puts result
else
  # Manejar entrada inválida
  puts "Entrada inválida. Por favor, ingresa un número válido."
end
