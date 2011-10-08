class ReportController < ApplicationController
  def budget

  end

  def require_budget
  end
  def target
  end
  def factor
  end

  def density_group_youth
  end

  def intervention_chart
  end
  def expand_chart
  end
  def budget_chart
  end

  def method1_gc
  end
  def method2_gc
  end
  def method3_gc
  end
  def method4_gc
  end

  def threat
  end
  def dw_report1
    Report.load_dw_report1(current_user.id)
    @rows = Report.gen_dw_report1(current_user.id)
  end
end

