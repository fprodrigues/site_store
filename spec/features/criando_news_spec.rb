require 'rails_helper'


RSpec.feature "Creating News" do
	scenario "A user creates a news" do
		visit "/"
		
		click_link "Adicione Noticia"
		
		fill_in "Title", with:"Creating first new"
		fill_in "Body", with:"lorem ipsum"

		
		click_button "Publicar"

		expect(page).to have_content ("Noticia criada com sucesso")
		expect(page.current_path).to eq(articles_path)
	end
end
