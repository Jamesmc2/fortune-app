class MyExamplesController < ApplicationController
  def fortune
    prng = Random.new
    fortunes = ["You will win the lottery", "You will go bankrupt", "You will live forever"]
    random = prng.rand(0..2)
    render json: { message: "#{fortunes[random]}" }
  end

  def lotto
    prng = Random.new
    winner = []
    6.times do
      winner << prng.rand(1..60)
    end
    p "The winning numbers are: #{winner}"
    render json: { message: "The winning numbers are:  #{winner}" }
  end
end
