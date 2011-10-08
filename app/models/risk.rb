class Risk < ActiveRecord::Base
  establish_connection :external_db
  set_table_name :risks
  set_primary_key :risk_id
end

# == Schema Information
#
# Table name: risks
#
#  id             :integer         not null, primary key
#  risk_lacode    :string(255)
#  risk_code      :integer
#  risk_hotid     :integer
#  risk_hottype   :integer
#  risk_population:integer
#  risk_rescode   :integer
#  created_at     :datetime
#  updated_at     :datetime
#

