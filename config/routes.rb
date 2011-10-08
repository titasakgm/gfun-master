GfundV2New::Application.routes.draw do
  resources :dw_report1s

  resources :project2_special_groups

  resources :user_threats

  resources :threats

  resources :threat_types

  resources :project2_budget_srcs

  resources :project2_leaders

  resources :leaders

  resources :project2_factors

  resources :risks

  resources :method4s

  resources :method3s

  resources :method2s

  resources :method1s

  resources :project2_targets

  resources :project2s

  resources :factors_projects

  resources :factors

  resources :targets

  resources :budget_srcs

  get "report/budget"
  get "report/require_budget"
  get "report/target"
  get "report/factor"
  get "report/density_group_youth"
  get "report/intervention_chart"
  get "report/expand_chart"
  get "report/budget_chart"
  get "report/method1_gc"
  get "report/method2_gc"
  get "report/method3_gc"
  get "report/method4_gc"
  get "report/threat"

  get "site/admin"
  get "site/report"
  get "site/workflow"

  get "site/define_threat"
  post "site/save_threat"
  resources :helps do

    get 'code', :on => :collection

  end

  resources :problems_users

  resources :special_groups_users

  resources :special_groups

  resources :categories

  resources :schools

  resources :communities_users

  resources :places_users

  resources :sample_products

  resources :social_problems

  resources :group_problems

  resources :youth_problems

  resources :problems

  resources :youth_progresses

  resources :activities_projects

  resources :progresses

  resources :projects_staffs do
    resource :progress
  end

  resources :activities

  resources :staffs

  resources :projects do
    collection do
         get 'summary'
    end
  end


  get "util/test1"

  resources :lr402s

  resources :lr75s

  resources :lr70s

  resources :lb40s

  resources :lb30s

  resources :lr65s

  resources :lb402556s

  resources :lb402555s

  resources :lb402554s

  resources :lb202556s

  resources :lb202555s

  resources :lb202554s

  get "outputs/o1"

  get "outputs/o2"

  get "outputs/o3"

  resources :lr602556s

  resources :lr602555s

  resources :tbl_40_2554_is

  resources :my_cars

  resources :lr_b_40s

  resources :lr20s

  resources :lr14s

  resources :lr60s

  resources :lr50s

  resources :lr46s

  resources :lr45s

  resources :lr40s

  get "summary/index"

  resources :schools_users

  get "form/edit_school"

  resources :places

  resources :communities

  resources :tumbons

  resources :lr12s

  resources :lr13s

  resources :lr11s

  resources :code_tables

  resources :ladmins
  post "form/save_student_male"
  post "form/save_student_female"
  post "form/save_value"
  resources :amphurs do
    resources :ladmins
  end

  get "site/test"

  get "users/autocomplete_province_name"
  get "users/autocomplete_amphur_name"
  get "users/autocomplete_ladmin_name"
  resources :products

  resources :provinces do
    resources :amphurs
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"

    # just remember to delete public/index.html.
  # root :to => "welcome#index"
  resource :account, :controller => "users"
  resources :users
  resource :user_session
  root :to => "site#home"
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id(.:format)))'
end

