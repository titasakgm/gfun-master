class SiteController < ApplicationController
  respond_to :html, :xml, :json, :js
  def test
  end
  def home
    render :layout => 'home'
  end
  def forms
    @total_male = current_user.lr11s.sum :male_no
    @total_female = current_user.lr11s.sum :female_no

    @place_youth = current_user.lr12s.sum :youth_no
    @com_youth = current_user.lr13s.sum :youth_no
  end
  def workflow
  end
  def admin
  end
  def report
  end
  def define_threat
  end
  def save_threat
    current_user.threat_ids = params[:threat_id]
    current_user.save
    redirect_to site_define_threat_path, :notice => "Threat updated successfully"
  end
end

