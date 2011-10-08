class FormController < ApplicationController
  respond_to :html, :xml, :json, :js
  def edit_school
    u = current_user
	  @schools = School.find(:all, :conditions => "ccode = '#{u.province_id}' and acode = '#{u.amphur_id}'")
    @lr11s = u.lr11s
    render :partial => "edit_school"
  end
  def edit_place
    @lr12s =  current_user.lr12s
    render :partial => "edit_place"
  end
  def edit_com
    @lr13s =  current_user.lr13s
    render :partial => "edit_com"

  end
  def add_place
    place = Place.create(:name => params[:name])

    lr12 = Lr12.new
    lr12.place = place
    lr12.youth_no = 0
    current_user.lr12s << lr12
    current_user.save
    @lr12s = current_user.lr12s
  end
  def add_com
    com = Community.create(:name => params[:name])

    lr13 = Lr13.new
    lr13.community = com
    lr13.youth_no = 0
    lr13.save
    current_user.lr13s << lr13
    current_user.save
    @lr13s = current_user.lr13s
  end

  def add_school
    school =  School.find(params[:school_id])
    current_user.schools << school
    lr11 = Lr11.new
    lr11.school = school
    lr11.user = current_user
    lr11.male_no  =  0
    lr11.female_no = 0
    lr11.save

    @lr11s = current_user.lr11s
  end
  def save_value
    if params[:tbl] == "lr12"
      lr12 = Lr12.find(params[:lr12_id])
      lr12.youth_no = params[:value]
      lr12.save
      @value = params[:value]
      render :partial => "save_value"
    elsif params[:tbl] == "lr13"
      lr13 = Lr13.find(params[:lr13_id])
      lr13.youth_no = params[:value]
      lr13.save
      @value = params[:value]
      render :partial => "save_value"
    end


  end

  def save_student_male
    lr11  = current_user.lr11s.where("school_id = #{params[:sch_id]}").first
    lr11.male_no = params[:value]
    lr11.save
    @value = params[:value]
    render :partial => "save_student_male"
  end
  def save_student_female
    lr11  = current_user.lr11s.where("school_id = #{params[:sch_id]}").first
    lr11.female_no = params[:value]
    lr11.save
    @value = params[:value]
    render :partial => "save_student_female"
  end
  def get_total_youth
    #get total students
    @total_male = current_user.lr11s.sum :male_no
    @total_female = current_user.lr11s.sum :female_no
    @place_youth = current_user.lr12s.sum :youth_no
    @com_youth = current_user.lr13s.sum :youth_no
    render :partial => "get_total_youth"
  end
  def get_total_place
    current_user.lr12s.sum :youth_no
  end
  def lr40
  end
  def lr45
  end
  def lr46
  end
end
