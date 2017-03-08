class Site::AdDetailController < SiteController

  def show
    @categories = Category.order_by_description
    @ad = set_ad_detail
  end

  private
    def set_ad_detail
      @ad = Ad.find(params[:id])
    end
end
