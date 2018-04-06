ActiveAdmin.register Product do
  permit_params :name, :description, :quantity, :price, :active, :image, product_categories_attributes: [:id, :product_id, :category_id, :_destroy]

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Product" do
      f.input :name
      f.input :description
      f.input :quantity
      f.input :price
      f.input :active
      f.input :image
      f.has_many :product_categories, allow_destroy: true do |n_f|
        n_f.input :category
      end
    end

    f.actions
  end

end
