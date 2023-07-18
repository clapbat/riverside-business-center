class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Realize qualquer ação necessária após salvar os dados do usuário
      # Por exemplo, enviar um e-mail de confirmação ou notificar o admin
      redirect_to root_path, notice: 'Seus dados foram enviados com sucesso. Aguarde o contato do administrador.'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :industry, :start_date, :description)
  end
end
