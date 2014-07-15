#!/usr/bin/env ruby -w
require 'rubygems'
require 'gosu'

class GameWindow < Gosu::Window
  # will add attr_readers in future
  attr_reader :images, :audio, :pieces, :board, :pawns

  IMAGE_ASSETS = {
    :background => 'background.png',
    :board => 'board.png',
    :white_king => 'white_king.png',
    :black_king => 'black_king.png',
    :white_queen => 'white_queen.png',
    :black_queen => 'black_queen.png',
    :white_rook => 'white_rook.png',
    :black_rook => 'black_rook.png',
    :white_bishop => 'white_bishop.png',
    :black_bishop => 'black_bishop.png',
    :white_knight => 'white_knight.png',
    :black_knight => 'black_knight.png'
    :white_pawn => 'white_pawn.png',
    :black_pawn => 'black_pawn.png'
  }

  AUDIO_ASSETS = {
    :move => 'move.wav'
  }

  def initialize
    # figure these dimensions out later
    super 820, 480, false
    self.caption = "The Secret Of Chess"
    @images = {}
    @audio = {}

  end

  def run!
    self.load_assets
    self.setup_game
    self.show
  end

  def draw
    # gets called every frame after update
    # draw background
    @images[:background].draw(0, 0, 0)

    # draw the pieces
    @pawns.each { |pawn| pawn.draw }

    # incase i want to draw words e.g.
    @font.draw("#{@turn}", 10, 10, 20)

  end

  def update
    # gets called every frame 60 fps

  end

  protected

  def load_assets
    IMAGE_ASSETS.each do |key, value|
      @images[key] = Gosy::Image.new(self, "images/#{value}")
    end

    AUDIO_ASSETS.each do |key, value|
      @audio[key] = Gosu::Sample.new(self, "audio/#{value}")
    end

    @font = Gosu::Font.new(self, 'Courier', 40)
  end

  def game_over
    self.close
  end

end

window = GameWindow.new
window.show
