ActiveAdmin.register Photo do
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :description
      f.input :extra
    end
    f.inputs "Image File" do
      f.input :image, :as => :file
    end
    f.actions
  end
end
