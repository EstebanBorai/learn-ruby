class Dog
    def set_name(name)
        @name = name
    end
end

fido = Dog.new
bonzo = Dog.new

fido.set_name('Fido')
bonzo.set_name('Bonzo')
