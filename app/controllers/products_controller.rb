class ProductsController < InheritedResources::Base

  #private

  #  def product_params
  #    params.require(:product).permit(:Nazwa)
  #  end
  api :GET, '/products/:id', "zwraca podstawowe informacje o produkcie"
  def show
  end

  api :GET, '/products', "zwraca produkty zalogowanego dystrybutora"
  def index
  end

  api :DELETE, '/products/:id', "Usuwa produkt"
  def destroy
  end


end
