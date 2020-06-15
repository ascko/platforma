class UsersController < InheritedResources::Base

  #def user_params
  #  params.require(:user).permit(:email, :imie, :nazwisko, :nrtel)
  #end
  api :GET, '/users/:id', "Zwraca podstawowe informacje o kliencie"
  def show
  end

  api :GET, '/v1/users', "Zwraca klientow zalogowanego dystrybutora"
  def index
  end

  api :PUT, '/v1/users/:id', "Aktualizuje dane klienta"
  param :id, String, required: true
  param :user, Hash, desc: "User data" do
    param :email, String,  :required => false
    param :imie, String,  :required => false
    param :nazwisko, String,  :required => false
    param :nrtel, String,  :required => false
  end
  def update
  end

  api :GET, '/v1/users/:id/licenses', "Zwraca licencje przypisane do klienta"
  param :id, String, required: true
  def show_licenses
  end

  api :GET, '/v1/users/:id/subscriptions', "Zwraca subskrypcje przypisane do klienta"
  param :id, String, required: true
  def show_subscriptions
  end

  api :DELETE, '/users/:id', "Usuwa klienta"
  def destroy
  end

end
