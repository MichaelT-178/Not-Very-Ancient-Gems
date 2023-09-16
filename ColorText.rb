class ColorFormat

    # Adding self makes the method a static Class Method.
    def self.color(txt, color) 

        #Program gave threw an error when I tried declaring these as constants
        red = "\e[31m"
        blue = "\e[34m"
        magenta = "\e[35m"
        cyan = "\e[36m"
        reset = "\e[0m"

        case color
            when "red"
                return "#{red}#{txt}#{reset}"
            when "blue"
                return "#{blue}#{txt}#{reset}"
            when "magenta"
                return "#{magenta}#{txt}#{reset}"
            when "cyan"
                return "#{cyan}#{txt}#{reset}"
            else
                print c("ERROR: ", "red")
                puts "Invalid input"
                exit(0)
        end

    end
end 