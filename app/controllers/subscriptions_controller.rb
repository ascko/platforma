class SubscriptionsController < InheritedResources::Base

  #private

  #  def subscription_params
  #    params.require(:subscription).permit(:idKlienta, :idPlanu)
  #  end
  api :GET, '/v1/subscriptions/:id', "Zwraca podstawowe informacje o subskrypcji"
  def show
  end

  api :GET, '/v1/subscriptions', "Zwraca subskrypcje zalogowanego dystrybutora"
  def index
  end

  api :POST, '/v1/subscriptions', "Tworzy subskrypcje"
  param :subscription, Hash, desc: "Subscription data" do
    param :idPlanu, Integer,  :required => true
    param :idKlienta, String,  :required => true
  end
  def create
  end

  api :DELETE, '/subscriptions/:id', "Usuwa subskrypcje"
  def destroy
  end

end
