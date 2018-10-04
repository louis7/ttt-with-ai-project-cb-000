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

def full?
  ## got to find an easier / shorter way to find out if an array is full
bucket = 0
    @cells.each do |element|
      if element == " "
        bucket= 1
      end
    end
    if bucket == 1
      return false
    else
    return true
    end
end



  def taken?(space)
    cell = space.to_i
    if @cells[cell-1] == "X" || @cells[cell-1] == "O"
      return true
    else @cells[cell-1] == nil || @cells[cell-1] == " "
      return false
    end
  end

  def valid_move?(input)
    position = input.to_i
    if position.between?(1, 9) && !taken?(position)
      return true
    end
  end



end
#puts "#{@cell[0]}  | #{@cell[1]}  | #{@cell[2]}"
#puts "#{@cell[3]}  | #{@cell[4]}  | #{@cell[5]}"
#puts "#{@cell[6]}  | #{@cell[7]}  | #{@cell[8]}"
