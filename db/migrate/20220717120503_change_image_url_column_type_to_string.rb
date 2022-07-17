class ChangeImageUrlColumnTypeToString < ActiveRecord::Migration[6.1]
    def change
        change_column(:data, :image_url, :string)
    end
end
