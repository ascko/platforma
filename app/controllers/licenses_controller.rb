class LicensesController < InheritedResources::Base

  #private

  def license_params
    params.require(:license).permit(:idSubskrypcji, :idProduktu)
  end
  api :GET, '/licenses/:id', "Zwraca podstawowe informacje o licencji"
  def wow
  end

  api :GET, '/licenses', "Zwraca wszystkie licencje zalgowanego dystrybutora"
  def prefex
  end

  api :DELETE, '/licenses/:id', "Usuwa licencje"
  def kieroy
  end

end
