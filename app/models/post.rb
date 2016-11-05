class Post < ActiveRecord::Base
	has_attached_file :image_uno, styles: { large: "1600x1600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image_uno, content_type: /\Aimage\/.*\z/

	has_attached_file :image_dos, styles: { large: "1600x1600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image_dos, content_type: /\Aimage\/.*\z/

	has_attached_file :image_tres, styles: { large: "1600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image_tres, content_type: /\Aimage\/.*\z/

	has_attached_file :image_quatro, styles: { large: "1600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image_quatro, content_type: /\Aimage\/.*\z/
end
