ActiveAdmin.register Product do
  permit_params :name, :description, :quantity, :price, :active, :image, categories_attributes: [:id, :name, :_destroy]

  # form do |f|
  #   f.semantic_errors *f.object.errors.keys
  #
  #   f.inputs "Product" do
  #     f.input :name
  #     f.input :description
  #     f.input :quantity
  #     f.input :price
  #     f.input :active
  #     f.input :image
  #     f.has_many  , allow_destroy: true do |n_f|
  #       n_f.input :categories
  #     end
  #   end
  #
  #   f.actions
  # end

end
