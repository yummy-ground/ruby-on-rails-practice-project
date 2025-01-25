class CalculatorController < ApplicationController
  def add
    if params[:a] and params[:b]
      @a = Integer(params[:a])
      @b = Integer(params[:b])
      @result = @a + @b
    else
      @a = nil
      @b = nil
      @result = nil
    end
  end
end
