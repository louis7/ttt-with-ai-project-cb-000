class Board
attr_accessor :cells

def initialize
    @cells = [" "," "," "," "," "," "," "," "," "]
end


  def display
   puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
   puts "-----------"
   puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
   puts "-----------"
   puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
   puts "============================================"

 end

def reset!
    @cells = [" "," "," "," "," "," "," "," "," "]
end

def position(input_position)
    if input_position == "1"
        @position = "O"
    elsif input_position =="2"
        @position = " "
    else
        @position = "X"
    end
    @position
end


def update(token , boardposition)
    @cells[boardposition] = token
    @cells
end


end
#puts "#{@cell[0]}  | #{@cell[1]}  | #{@cell[2]}"
#puts "#{@cell[3]}  | #{@cell[4]}  | #{@cell[5]}"
#puts "#{@cell[6]}  | #{@cell[7]}  | #{@cell[8]}"
