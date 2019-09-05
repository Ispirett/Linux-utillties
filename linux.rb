#Constants

NOT_VALID = "Option not valid"


def scripts
    puts "What script do you want to use".yellow
    puts "Enter p for port killer or f for front end project or e to exit".light_blue
    input = gets.chomp
   if checkInput(input) == NOT_VALID
       puts 'wrong option'
        scripts()
   end

end

def checkInput(input)
    case input
    when "p"
    system("./port_killer.sh")
    when "f"
    system("./front_end_project.sh")
    when "e"
    exit
    else
     NOT_VALID
     end
end


class String
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

  def yellow
    colorize(33)
  end

  def blue
    colorize(34)
  end

  def pink
    colorize(35)
  end

  def light_blue
    colorize(36)
  end

  def white
    colorize(15)
  end

  def bg_black
    colorize(40)
  end

  def bg_red
    colorize(41)
  end

  def bg_green
    colorize(42)
  end

  def bg_brown
    colorize(43)
  end

  def bg_blue
    colorize(44)
  end

  def bg_magenta
    colorize(45)
  end

  def bg_cyan
    colorize(46)
  end

  def bg_gray
    colorize(47)
  end

  def bold
    colorize(22)
  end

  def italic
    colorize(23)
  end

  def underline
    colorize(24)
  end

  def blink
    colorize(25)
  end

  def reverse_color
    colorize(27)
  end
end

scripts()
