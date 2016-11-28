class Listing < ActiveRecord::Base
    if Rails.env.development?
        has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "no-image-available-md.png"
    else

        has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "no-image-available-md.png",
        :storage => :dropbox,
        :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
        :path => ":style/:id_:filename"
    end
end
