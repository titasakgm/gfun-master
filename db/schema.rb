# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110930060311) do

  create_table "activities", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
  end

  create_table "activities_projects", :force => true do |t|
    t.integer  "activity_id"
    t.integer  "project_id"
    t.string   "freq"
    t.string   "provider"
    t.string   "sponsor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weight"
  end

  create_table "amphurs", :force => true do |t|
    t.integer "province_id"
    t.string  "name"
  end

  create_table "budget_srcs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string "name"
  end

  create_table "code_tables", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "communities", :force => true do |t|
    t.string   "name"
    t.text     "desciption"
    t.text     "address"
    t.integer  "tumbon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ladmin_id"
  end

  create_table "communities_users", :force => true do |t|
    t.integer  "community_id"
    t.integer  "user_id"
    t.integer  "male_no"
    t.integer  "female_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dw_report1s", :force => true do |t|
    t.string   "special_group_name"
    t.integer  "special_group_id"
    t.integer  "project2_id"
    t.string   "project2_title"
    t.decimal  "a_budget"
    t.integer  "budget_src_id"
    t.string   "budget_src_title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "factors", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
  end

  create_table "factors_projects", :id => false, :force => true do |t|
    t.integer  "factor_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "helps", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
  end

  create_table "ladmins", :force => true do |t|
    t.integer "amphur_id"
    t.string  "name"
  end

  create_table "lb202554s", :force => true do |t|
    t.integer  "user_id"
    t.string   "team_type"
    t.integer  "team_no"
    t.integer  "e_team_no"
    t.integer  "f_team_no"
    t.integer  "wd_team_no"
    t.integer  "pd_team_no"
    t.integer  "budget"
    t.text     "trainner"
    t.text     "tool"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lb202555s", :force => true do |t|
    t.integer  "user_id"
    t.string   "team_type"
    t.integer  "team_no"
    t.integer  "e_team_no"
    t.integer  "f_team_no"
    t.integer  "wd_team_no"
    t.integer  "pd_team_no"
    t.integer  "budget"
    t.text     "trainner"
    t.text     "tool"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lb202556s", :force => true do |t|
    t.integer  "user_id"
    t.string   "team_type"
    t.integer  "team_no"
    t.integer  "e_team_no"
    t.integer  "f_team_no"
    t.integer  "wd_team_no"
    t.integer  "pd_team_no"
    t.integer  "budget"
    t.text     "trainner"
    t.text     "tool"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lb30s", :force => true do |t|
    t.integer  "user_id"
    t.string   "team_type"
    t.integer  "pd_team_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lb402554s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.integer  "project_budget"
    t.integer  "dev_budget"
    t.integer  "budget"
    t.text     "sponsor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lb402555s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.integer  "project_budget"
    t.integer  "dev_budget"
    t.integer  "budget"
    t.text     "sponsor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lb402556s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.integer  "project_budget"
    t.integer  "dev_budget"
    t.integer  "budget"
    t.text     "sponsor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lb40s", :force => true do |t|
    t.integer  "user_id"
    t.string   "team_type"
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leaders", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr11s", :force => true do |t|
    t.integer  "school_id"
    t.integer  "code_table_id"
    t.integer  "user_id"
    t.integer  "male_no"
    t.integer  "female_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr12s", :force => true do |t|
    t.integer  "place_id"
    t.integer  "code_table_id"
    t.integer  "user_id"
    t.integer  "youth_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr13s", :force => true do |t|
    t.integer  "community_id"
    t.integer  "code_table_id"
    t.integer  "user_id"
    t.integer  "youth_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr14s", :force => true do |t|
    t.integer  "user_id"
    t.string   "special_people"
    t.string   "status"
    t.integer  "youth_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr20s", :force => true do |t|
    t.integer  "user_id"
    t.string   "behavior_problem"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr402s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.string   "target_name"
    t.integer  "target1_no"
    t.integer  "budget1"
    t.integer  "target2_no"
    t.integer  "budget2"
    t.integer  "target3_no"
    t.integer  "budget3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr40_2s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.string   "target_name"
    t.integer  "target_no_2554"
    t.decimal  "budget_2554"
    t.integer  "target_no_2555"
    t.decimal  "budget_2555"
    t.integer  "target_no_2556"
    t.decimal  "budget_2556"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr40s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.string   "target_name"
    t.string   "method"
    t.decimal  "plan_budget"
    t.string   "owner"
    t.integer  "target_no"
    t.datetime "define_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr45s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.string   "target_name"
    t.string   "activity_name"
    t.decimal  "real_budget"
    t.string   "supporter"
    t.integer  "target_no"
    t.datetime "define_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr46s", :force => true do |t|
    t.integer  "user_id"
    t.string   "health_service"
    t.integer  "youth_no"
    t.datetime "define_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr50s", :force => true do |t|
    t.integer  "user_id"
    t.string   "health_service"
    t.integer  "youth_2554"
    t.integer  "youth_2555"
    t.integer  "youth_2556"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr602555s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.string   "target_name"
    t.string   "activity_type"
    t.integer  "target_no"
    t.string   "team_type"
    t.integer  "team_no"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr602556s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.string   "target_name"
    t.string   "activity_type"
    t.integer  "target_no"
    t.string   "team_type"
    t.integer  "team_no"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr60s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.string   "target_name"
    t.string   "activity_type"
    t.integer  "target_no_2554"
    t.string   "team_type"
    t.integer  "team_no"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr65s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.string   "target_name"
    t.string   "activity_type"
    t.integer  "budget"
    t.string   "owner"
    t.integer  "target_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr70s", :force => true do |t|
    t.integer  "user_id"
    t.string   "project_name"
    t.string   "target_name"
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr75s", :force => true do |t|
    t.integer  "user_id"
    t.string   "service_name"
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr_b_40s", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "method1s", :force => true do |t|
    t.integer  "project2_id"
    t.integer  "year1_n"
    t.integer  "year2_n"
    t.integer  "year3_n"
    t.integer  "density"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "target_id"
    t.boolean  "is_check"
  end

  create_table "method2s", :force => true do |t|
    t.integer  "project2_id"
    t.integer  "target_id"
    t.string   "title"
    t.integer  "year1_n"
    t.integer  "year2_n"
    t.integer  "year3_n"
    t.string   "step1_title"
    t.string   "step2_title"
    t.string   "step3_title"
    t.string   "step4_title"
    t.string   "step5_title"
    t.integer  "step1_dens"
    t.integer  "step2_dens"
    t.integer  "step3_dens"
    t.integer  "step4_dens"
    t.integer  "step5_dens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_check"
    t.integer  "result_year1_n"
  end

  create_table "method3s", :force => true do |t|
    t.integer  "project2_id"
    t.integer  "target_id"
    t.string   "title"
    t.integer  "year1_n"
    t.integer  "year2_n"
    t.integer  "year3_n"
    t.string   "step1_title"
    t.string   "step2_title"
    t.string   "step3_title"
    t.string   "step4_title"
    t.integer  "step1_dens"
    t.integer  "step2_dens"
    t.integer  "step3_dens"
    t.integer  "step4_dens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_check"
    t.integer  "result_year1_n"
  end

  create_table "method4s", :force => true do |t|
    t.integer  "project2_id"
    t.integer  "target_id"
    t.string   "title"
    t.integer  "density"
    t.integer  "year1_n"
    t.integer  "year2_n"
    t.integer  "year3_n"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_check"
    t.integer  "result_year1_n"
  end

  create_table "my_cars", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", :force => true do |t|
    t.string   "name"
    t.text     "desciption"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ladmin_id"
  end

  create_table "places_users", :force => true do |t|
    t.integer  "place_id"
    t.integer  "user_id"
    t.integer  "male_no"
    t.integer  "female_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problems", :force => true do |t|
    t.string   "title"
    t.string   "type_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problems_projects", :id => false, :force => true do |t|
    t.integer  "problem_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problems_users", :force => true do |t|
    t.integer  "problem_id"
    t.integer  "user_id"
    t.string   "flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "progresses", :force => true do |t|
    t.integer  "projects_staff_id"
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.string   "q4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project2_budget_srcs", :force => true do |t|
    t.integer  "project2_id"
    t.integer  "budget_src_id"
    t.decimal  "budget"
    t.integer  "nyear"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project2_factors", :force => true do |t|
    t.integer  "project2_id"
    t.integer  "factor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project2_leaders", :force => true do |t|
    t.integer  "project2_id"
    t.integer  "leader_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project2_special_groups", :force => true do |t|
    t.integer  "project2_id"
    t.integer  "special_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project2_targets", :force => true do |t|
    t.integer  "project2_id"
    t.integer  "target_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project2s", :force => true do |t|
    t.string   "title"
    t.integer  "nmonth"
    t.integer  "fiscal_year"
    t.decimal  "a_budget"
    t.decimal  "b_budget"
    t.decimal  "c_budget"
    t.integer  "year1n"
    t.integer  "year2n"
    t.integer  "year3n"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "cover_year"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "status"
    t.integer  "fiscal_year"
    t.integer  "yq1"
    t.integer  "yq2"
    t.integer  "yq3"
    t.integer  "yq4"
    t.integer  "a_budget"
    t.integer  "a_youth_no"
    t.integer  "b_budget"
    t.integer  "b_youth_no"
    t.integer  "c_budget"
    t.integer  "c_youth_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "objective"
    t.integer  "user_id"
    t.integer  "budget_src_id"
    t.integer  "y2_budget"
    t.integer  "y3_budget"
    t.integer  "nday"
  end

  create_table "projects_staffs", :force => true do |t|
    t.integer  "project_id"
    t.integer  "staff_id"
    t.integer  "year1"
    t.integer  "amount1"
    t.integer  "year2"
    t.integer  "amount2"
    t.integer  "year3"
    t.integer  "amount3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects_targets", :id => false, :force => true do |t|
    t.integer  "project_id"
    t.integer  "target_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provinces", :force => true do |t|
    t.string "name"
  end

  create_table "regions", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "risks", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sample_products", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", :force => true do |t|
    t.string  "name"
    t.string  "changwat"
    t.string  "ccode"
    t.string  "amphur"
    t.string  "acode"
    t.string  "tambon"
    t.string  "tcode"
    t.integer "category_id"
  end

  create_table "schools_users", :force => true do |t|
    t.integer  "school_id"
    t.integer  "user_id"
    t.integer  "male_no"
    t.integer  "female_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "special_groups", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_groups_users", :force => true do |t|
    t.integer  "special_group_id"
    t.integer  "user_id"
    t.string   "flag"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targets", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
  end

  create_table "tbl_40_2554_is", :force => true do |t|
    t.string   "test"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tbl_40_2554s", :force => true do |t|
    t.string   "test"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "threat_types", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weight"
  end

  create_table "threats", :force => true do |t|
    t.integer  "threat_type_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weight"
  end

  create_table "tumbons", :force => true do |t|
    t.string   "name"
    t.integer  "amphur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_threats", :force => true do |t|
    t.integer  "user_id"
    t.integer  "threat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                            :null => false
    t.string   "crypted_password",                 :null => false
    t.string   "password_salt",                    :null => false
    t.string   "persistence_token",                :null => false
    t.integer  "login_count",       :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
    t.integer  "province_id"
    t.integer  "amphur_id"
    t.integer  "ladmin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "roles_mask"
    t.string   "fname"
    t.string   "lname"
    t.string   "position"
    t.string   "office"
    t.string   "phone"
    t.string   "mobile"
    t.string   "email"
    t.integer  "reg_id"
    t.integer  "center_id"
  end

  create_table "youth_progresses", :force => true do |t|
    t.integer  "project_id"
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
