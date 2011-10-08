class Report
  def self.gen_dw_report1(user_id=nil)
    if user_id
      ds = DwReport1.find_by_sql("
        select
          case when project_id = min_project_id
               then special_group_name else null
               end  special_group_name,
               project_title,
               a_budget
	       project_id
        from (
          select special_group_id, special_group_name,
              min(project2_id) over (partition by special_group_id)  min_project_id,
              project2_title project_title,
              project2_id project_id,
              a_budget
          from dw_report1s where user_id = #{user_id}
        ) x
      ")
    else
      ds = DwReport1.find_by_sql("
        select
          case when project2_id = min_project_id
               then special_group_name else null
               end  special_group_name,
            project2_title project_title,
            project2_id project_id,
            a_budget
        from (
          select special_group_id, special_group_name,
              min(project2_id) over (partition by special_group_id)  min_project_id,
              project2_title,
              project2_id,
              a_budget
          from dw_report1s
        ) x
      ")
    end
    return ds
  end
  def self.load_dw_report1(user_id = nil)
    if user_id

      rs = Project2.find_by_sql("
         select
        p1.id as project_id,
        p1.title as project_title,
        sp.id as special_group_id,
        sp.title as special_group_title,
        bs.id as budget_src_id,
        bs.title as budget_src_title,
        p1.a_budget,
        p1.user_id
        from project2s p1
        left join project2_special_groups psg on p1.id = psg.project2_id
        left join special_groups sp on psg.special_group_id = sp.id
        left join project2_budget_srcs pbs on p1.id = pbs.project2_id
        left join budget_srcs bs on pbs.budget_src_id = bs.id
        where p1.user_id = #{user_id}
      ")
    else
      rs = Project2.find_by_sql("
        select
        p1.id as project_id,
        p1.title as project_title,
        sp.id as special_group_id,
        sp.title as special_group_title,
        bs.id as budget_src_id,
        bs.title as budget_src_title,
        p1.a_budget,
        p1.user_id
        from project2s p1
        left join project2_special_groups psg on p1.id = psg.project2_id
        left join special_groups sp on psg.special_group_id = sp.id
        left join project2_budget_srcs pbs on p1.id = pbs.project2_id
        left join budget_srcs bs on pbs.budget_src_id = bs.id
      ")

    end
    if user_id
      DwReport1.where(:user_id => user_id).delete_all
    else
      DwReport1.delete_all
    end
    rs.each do |r|
      dw = DwReport1.new
      dw.special_group_id = r.special_group_id
      dw.special_group_name = r.special_group_title
      dw.project2_id = r.project_id
      dw.project2_title = r.project_title
      dw.a_budget = r.a_budget
      dw.budget_src_id = r.budget_src_id
      dw.budget_src_title = r.budget_src_title
      dw.user_id = r.user_id
      dw.save
    end
  end
end

