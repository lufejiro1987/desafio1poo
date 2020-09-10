class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :membresia_vip
    def initialize(nombre_de_usuario, numero_de_cuenta, membresia_vip = 0)
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @membresia_vip = membresia_vip
    end
    def verificar_nombre
        if @nombre_de_usuario != String
            raise ArgumentError "El nombre de usuario debe ser un caracter alfabetico"
        else
          puts "su nombre de usuario es#{@nombre_de_usuario}"
        end
    end
    def verificar_cuenta
        if (@numero_de_cuenta.digits.count != 8)
            raise ArgumentError "El número de cuenta debe tener 8 dígitos"
        else      
            puts "Su número de cuenta es #{@numero_de_cuenta}"
        end
    end
    def membresia_vip
        if @membresia_vip == true
            puts "Su número de cuenta es 1-#{@numero_de_cuenta}, por lo tanto es VIP"
        else
            puts "Su número de cuenta es 0-#{@numero_de_cuenta}, por lo tanto no es vip"
        end
    end
end

cta = CuentaBancaria.new('Juan', 44664477, true)

puts "Su nombre de usuario es #{cta.nombre_de_usuario}"
puts "Su número de cuenta es #{cta.numero_de_cuenta}"
puts cta.membresia_vip