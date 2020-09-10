class Card
    attr_accessor :numero, :pinta
    
    def initialize
        @numero = numero
        @pinta = pinta
    end
end

card1 = Card.new

pinta = ['C', 'D', 'E', 'T']

card1.numero = Random.rand(1..13) #numero al azar del 1 al 13
card1.pinta = pinta.sample  #metodo sample para las pintas de las cartas


puts "El numero de tu carta es #{card1.numero}"
puts "La pinta de tu carta es #{card1.pinta}"
