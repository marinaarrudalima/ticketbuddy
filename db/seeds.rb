User.destroy_all
user = User.create!(email: "a@a.com", password: "123123")
ticket = Ticket.create!(artist: "Beatles", ticket_type: "Pista Premium", price: 120.0, city: "Sao Paulo", event_date: Date.new(2024,3,1),user: user)
