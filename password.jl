using Random: Random

module Password

    export password

    chars = collect("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZαβγδεζηθικλμνξπρσςτυφχψωΓΔΘΛΞΠΣΦΨΩ0123456789`~!@#\$%^&*()[]{}/\\-=+/÷<>≥≤√ç®©˙¬ø?≠±·§ƒ«»… ")
    chlen = length(chars)

    password = function (len::Int)
        pass = ""
        for _ in range(length=len)
            val = rand() * chlen
            idx = Int(ceil(val))
            pass *= string(chars[idx])
        end
        return pass
    end

end