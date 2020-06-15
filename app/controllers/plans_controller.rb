class PlansController < InheritedResources::Base

  private

    def plan_params
      params.require(:plan).permit(:Nazwa, :Cena, :CzasTrwania, :DarmowyOkres, :idProduktu, :IloscLicencji)
    end

end
