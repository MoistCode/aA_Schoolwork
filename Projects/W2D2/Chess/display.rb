require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  def initialize(board)
   @cursor = Cursor.new([0,0], board)
  end

  def render
    @cursor.get_input
  end
end
