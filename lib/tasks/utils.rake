namespace :utils do
  require  'faker'
  desc "Cria fake adminstradores"
  task generate_admins: :environment do
		puts "Cadastrando o adminstradores..."
		10.times do
			Admin.create!(email: Faker::Internet.email,
                    name: Faker::Name.name,
										password: "123456",
										password_confirmation: "123456",
                    role: [0,0,1,1,1].sample
									 )
		end
		puts "Cadastrando o adminstradores...[ok]"
  end

end
