xo = ["камень",
      "ножницы",
      "бумага"
] # Массив с данными

comp_number = rand(3) # Присваиваем переменную случайному пислу от 0 - 2

# enter_comp = xo[comp_number] # Присваиваем новую переменную и Подставляем переменную со случайным числом в массив, для вывода выбора компьютера.
# puts enter_comp # Проверка, что ввел пользователь, по необходимости можно включить

puts "Компьютер хочет поиграть в игру Камень - Ножницы - Бумага."
puts "Для игры нужно ввести один из вариантов в цифровом виде."
puts "Введите вариант: 0 - камень, 1 - ножницы, 2 - бумага" # Ввод данных пользователя для начала игры

user_number = gets.to_i # Переменная для ввода числа пользователя""
enter_all = "Вы выбрали #{xo[user_number]}, а Компьютер выбрал #{xo[comp_number]}"

if user_number < 0 || user_number > 2 #Если игрок ввел число вне пределела 0 - 2, игра заканчивается
  puts "Компьютер не хочет играть, если ты не соблюдаешь правила игры!"
  puts "Нужно ввести в диапазоне от 0 - 2"
else
  if comp_number == user_number # Условие для ничьей
    puts enter_all
    puts "Ничья"
  else # Условие для выигрыша или проигрыша
    if comp_number == 0 && user_number == 1
      puts enter_all
      puts "Комп победил, так как Вы выбрали камень поломал ножницы!"
    elsif comp_number == 0 && user_number == 2
      puts enter_all
      puts "Ты победил, бумага закатала камень!"
    elsif comp_number == 1 && user_number == 2
      puts enter_all
      puts "Комп победил, ножницы разрезали бумагу!"
    elsif comp_number == 1 && user_number == 0
      puts enter_all
      puts "Ты победил, камень поломал ножницы!"
    elsif comp_number == 2 && user_number == 0
      puts enter_all
      puts "Комп победил, бумага закатала камень!"
    elsif comp_number == 2 && user_number == 1
      puts enter_all
      puts "Ты победил, ножницы разрезали бумагу!"
    end
  end
end
