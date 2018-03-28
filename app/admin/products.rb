ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, :description, :quantity, :price, :active, :image, :product_categories_ids

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
