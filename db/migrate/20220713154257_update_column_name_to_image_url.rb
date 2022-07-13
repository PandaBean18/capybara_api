class UpdateColumnNameToImageUrl < ActiveRecord::Migration[6.1]
    def change
        rename_column :data, :image, :image_url
    end
end
