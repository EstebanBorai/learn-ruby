class Dog
    def set_name(name)
        @name = name
    end

    def get_name
        return @name
    end

    def talk
        return 'woof!'
    end
end

puccini = Dog.new

puccini.set_name('Puccini')
puts puccini.get_name
puts puccini.talk
