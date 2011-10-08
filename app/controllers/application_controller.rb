# encoding: utf-8
class ApplicationController < ActionController::Base
  helper :all
  helper_method :current_user_session, :current_user
  filter_parameter_logging :password, :password_confirmation

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to root_url
  end
  KNOW_STATUS = {"no" => "ไม่มี", "have_but_know" => "มีแต่ไม่ทราบ", "have" => "มี"}
  HAVE_STATUS = {"ไม่มี" => "no", "มีบ้าง" => "some", "มีมาก" => "have_much",  "ไม่ทราบ" => "unknown"}
  TARGET_GROUP = {"สถานศึกษา" => "edu", "สถานประกอบการ" => "place", "ชุมชน" => "social",  "ไม่เจาะจง"=>"na"}
  ACTIVITY_TYPE = {"จัดการยุทธศาสตร์ ติดตาม ประเมินผล" => 1,  "กิจกรรมสถานศึกษา" => 2, "กิจกรรมชุมชน" => 3, "กิจกรรมสถานประกอบการ" => 4, "กิจกรรมประชากรกลุ่มเฉพาะ" => 5,
"บริการให้คำแนะนำปรึกษาเบื้องต้นและการพัฒนาทักษะเพื่อปรับเปลี่ยนพฤติกรรม" => 6,  "บริการคำปรึกษาและการตรวจเลือดเพื่อหาเชื้อเอชไอวี" => 7,  "รับบริการอนามัยเจริญพันธุ์" => 8}
  TEAM_TYPE = {"ทีมจัดการยุทธศาสตร์ ติดตาม ประเมินผล" => 1,
    "ทีมปรับเปลี่ยนพฤติกรรมเยาวชนในสถานศึกษา (เช่น ครู)" => 2,
    "ทีมปรับเปลี่ยนพฤติกรรมเยาวชนกลุ่มเฉพาะ (เช่น กลุ่มชายรักชาย กลุ่มเด็กเร่ร่อน เป็นต้น)" => 3,
    "ทีมปรับเปลี่ยนพฤติกรรมเยาวชนในสถานบริการ และเยาวชนทั่วไป" => 4,
    "แกนนำเยาวชน (เช่น แกนนำเยาวชนในสถานศึกษา แกนนำในสถานประกอบการ แกนนำในชุมชน เป็นต้น)" => 5,
    "ทีมจัดบริการที่เป็นมิตรสำหรับเยาวชน" => 6,
    "ทีมงาน และวิทยากรจากนอกพื้นที่ สำหรับการอบรม และการติดตามเสริมหนุนการ(ฝึก)ปฏิบัติงานของทีมงานในพื้นที่ที่ได้รับการอบรมแล้ว" => 7
}
  private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.record
    end

    def require_user
      unless current_user
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to new_user_session_url
        return false
      end
    end

    def require_no_user
      if current_user
        store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to account_url
        return false
      end
    end

    def store_location
      session[:return_to] = request.request_uri
    end

    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
end

