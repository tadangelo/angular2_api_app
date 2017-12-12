10.times do |proposal|
  Proposal.create!(
    customer: "Customer #{proposal}",
    portfolio_url: "https://tdangelo-portfolio.herokuapp.com/",
    tools: "Ruby on Rails, Angular,",
    estimated_hours: (80 + proposal),
    hourly_rate: 120,
    weeks_to_complete: 12,
    client_email: "tania.a.dangelo@outlook.com"
  )
end

puts "10 proposals created"