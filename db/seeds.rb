User.destroy_all
user = User.create!(email: "a@a.com", password: "123123")
# ticket = Ticket.create!(artist: "Beatles", ticket_type: "Pista Premium", price: 120.0, city: "Sao Paulo", event_date: Date.new(2024,3,1),user: user, image_url: actioncontroller::base.helpers.image_path('beatles.jpeg'))
ticket = Ticket.create!(artist: "Lana Del Rey", ticket_type: "Pista", price: 110.0, city: "Curitiba-PR", event_date: Date.new(2024,3,13),user: user, image_url: 'https://i.scdn.co/image/ab67616100005174b99cacf8acd5378206767261')
# ticket = Ticket.create!(artist: "C.Tangana", ticket_type: "VIP", price: 150.0, city: "Madri", event_date: Date.new(2024,3,24),user: user, image_url: "app/assets/images/ctangana.jpeg")
# ticket = Ticket.create!(artist: "Post Malone", ticket_type: "Pista", price: 90.0, city: "Rio de Janeiro", event_date: Date.new(2024,3,25),user: user, image_url: "app/assets/images/postmalone.jpeg")
