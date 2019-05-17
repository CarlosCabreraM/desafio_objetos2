class MyPet
    def initialize(name)
        @name = name
        @sleep = false
        @satisfied = 10 
        @fullIntestine = 0 
        puts @name + ' nace '
    end
    def walk
        puts "Haces caminar a #{@name}"
        @satisfied -= 2
        @fullIntestine = 2
    end
    
    def go_bath
        puts "#{@name} hizo sus necesidades"
        @fullIntestine = 0
        @satisfied += 2
    end
    
    def eat
        @satisfied = 10
        puts 'Ñom ñom!'
    end
    
    def sleep
        @sleep = true
        @satisfied = 0
        puts 'ZzZzZz'
    end
    
    def timeLapse
        if @satisfied > 0
            # Mueve el alimento del estomago al intestino.
            @satisfied = @satisfied - 1
            @fullIntestine = @fullIntestine + 1
        else # Nuestro mascota esta hambrienta!
            if @sleep
                @sleep = false
                puts '¡Se despierta de repente!'
            end
            puts "¡ #{@name} esta hambriento! En su desesperacion, ¡Murio de Hambre!"
            exit # Sale del programa.
        end
        if @fullIntestine >= 10
            @fullIntestine = 0
            puts "¡Uy! #{name} tuvo un accidente..."
        end
        if hungry?
            if @sleep
                @sleep = false
                puts '¡Se despierta de repente!'
            end
            puts "El estomago de #{@name} retumba..."
        end
        if needToGo?
            if @sleep
                @sleep = false
                puts 'Se despierta de repente!'
            end
            puts "#{@name} hace la danza del baño..."
        end
    end
end

def menu
    puts '1)Caminar'
    puts '2)Alimentar'
    puts '3)Ir al baño'
    puts '4)Ir a dormir'
end

puts 'Asigale un nombre a tu nueva mascota: '
petname = gets.chomp.to_s
p1 = MyPet.new(petname)
num = 0
while num != 5
    puts 'Elige una opción para interactuar con tu mascota: '
    menu
    num = gets.chomp.to_i
    case num
    when 1
        p1.walk
    when 2
        p1.eat
    when 3
        p1.go_bath
    when 4 
        p1.sleep
    when 5
        'Haz abandonado a tu mascota'
    end
end
    
