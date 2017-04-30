ActiveAdmin.register Song do
  permit_params :name
  actions :all, except: [:destroy]

  form do |f|
    inputs 'Songs' do
      f.input :title
    end
    f.semantic_errors
    f.actions
  end
end
