class Dog
    attr_reader :name
    def initialize(hash_opts)
        @name = hash_opts[:name]
        @breed = hash_opts[:breed]
        @color = hash_opts[:color]
    end
    def bark
        "#{@name} está ladrando"
    end
end
propiedades = {name: 'Beethoven', breed: 'San Bernardo', color: 'Café'}

dog = Dog.new(propiedades).bark
puts dog
