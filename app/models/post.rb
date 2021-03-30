class Post < ApplicationRecord
   has_rich_text :body
    def self.search(search)
    if search
        where(["name LIKE ?", "%#{search}%"])
    else
        all
    end
end

end
