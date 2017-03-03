class Backoffice::DashboardController < BackofficeController
  def index
    @admins = Admin.all
  end
end
