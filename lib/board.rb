# frozen_string_literal: true

require_relative 'color'

# Game board
class Board
  PIECES = ['●'.yellow.bold, '●'.blue.bold].freeze
  COLS = 7
  ROWS = 6

  attr_reader :board

  def initialize
    @board = Array.new(ROWS) { Array.new(COLS) }
    @board.map! do |row|
      row.map! do
        '_'
      end
    end

    # @board.last[0] = PIECES[0]
    # @board.last[2] = PIECES[1]
  end

  def print_board
    @board.each do |row|
      row.each do |cell|
        print "#{cell} "
      end
      puts ''
    end

    # p @board
  end
end
