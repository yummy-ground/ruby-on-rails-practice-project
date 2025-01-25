class FormController < ApplicationController
  def post_login
    @id = params[:id]
    @pwd = params[:pw]
    if params[:remember] == 'on'
      @is_remember = true
    else
      @is_remember = false
    end
    puts @id
    puts @pwd
    puts @is_remember
  end

  #
  # 큰 내용이 없을 경우, 함수를 정의하지 않아도
  # routes.rb에 매핑된 Action 이름과 일치하는 erb View를 찾아서 반환합니다.
  #

  def get_add #=> 생략 가능
  end

  def get_add_result
    @result = params[:first].to_i + params[:second].to_i
  end
end
