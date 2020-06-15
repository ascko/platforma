class DistributorsController < InheritedResources::Base

  private

    def distributor_params
      params.require(:distributor).permit(:email)
    end

end
