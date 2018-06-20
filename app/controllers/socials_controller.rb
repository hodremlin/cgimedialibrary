class SocialsController < InheritedResources::Base

  private

    def social_params
      params.require(:social).permit()
    end
end

