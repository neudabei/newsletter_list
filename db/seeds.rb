# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create categories
vc_category = Category.create!(name: "Venture Capital")
su_category = Category.create!(name: "Tech Startups")
ec_category = Category.create!(name: "Email course")
co_category = Category.create(name: "Coding")
em_category = Category.create!(name: "Email Marketing")
bc_category = Category.create!(name: "Bitcoin")
bd_category = Category.create!(name: "Big Data")
dh_category = Category.create(name: "Digital Health care")

# Create newsletters
avc_newsletter = Newsletter.create!(name: "AVC", description: "A daily newsletter about tech, startups and venture capital.", website_url: "http://www.avc.com", signup_url: "http://wwww.avc.com/subscribe/")
md_newsletter = Newsletter.create!(name: "Mattermark Daily", description: "The Mattermark Daily is a hand-curated newsletter compiled daily to bring you first-person accounts of entrepreneurship, investment and insights from the startup ecosystem.", website_url: "http://www.mattermark.com", signup_url: "http://mattermark.com/newsletters/" )
cb_newsletter = Newsletter.create!(name: "CB Insights", description: "Venture Capital Database. CB Insights helps you track the world's most promising private companies, their investors, their acquirers and the industries they compete in to help you.", website_url: "https://www.cbinsights.com/", signup_url: "https://www.cbinsights.com/")
ac_newsletter = Newsletter.create!(name: "Andrew Chen's newsletter", description: "Long-form essays on what’s going on here in Silicon Valley", website_url: "http://andrewchen.co/", signup_url: "http://andrewchen.co/")
dh_newsletter = Newsletter.create!(name: "Design for hackers", description: "Design Pitfalls is a free course, delivered via email, that teaches you how to avoid the most common mistakes beginning designers make.", website_url: "http://designforhackers.com/", signup_url: "http://designforhackers.com/")
hb_newsletter = Newsletter.create!(name: "Highbrow", description: "Highbrow is a subscription service that brings cool and exciting bite-sized daily courses to your inbox. No need for expensive and boring classes anymore, we make learning fun, easy and free!", website_url: "http://gohighbrow.com/", signup_url: "http://gohighbrow.com/")
rge_newsletter = Newsletter.create!(name: "Really Good Emails", description: "Top-tier Product Email Inspiration & Resources", website_url: "http://reallygoodemails.com", signup_url: "http://reallygoodemails.com")
lt_newsletter = Newsletter.create!(name: "LAUNCH Ticker", description: "Curated Top Stories in Tech Need-to-know news in less than 10 minutes a day", website_url: "https://www.launchticker.com/", signup_url: "https://www.launchticker.com/")
tr_newsletter = Newsletter.create!(name: "The Rock Weekly", description: "The latest digital health news, covering trends, funding, and startups—delivered weekly to your inbox.", website_url: "http://rockhealth.com", signup_url: "http://rockhealth.com/resources/rock-weekly/")
ta_newsletter = Newsletter.create!(name: "The Asset", description: "Get the best business news, every Friday.", website_url: "https://theassets.co/", signup_url: "https://theassets.co/")
cc_newsletter = Newsletter.create!(name: "Coin Center", description: "Keep up with the rapidly shifting world of cryptocurrency policy. We promise to keep these updates pithy. They’ll be focused only on what you need to know as a user, innovator, or enthusiast regarding regulation of technologies poised to change the world.", website_url: "http://coincenter.org/", signup_url: "http://coincenter.org/")

# Associate newsletters with categories
avc_newsletter.categories << vc_category
avc_newsletter.categories << su_category

md_newsletter.categories << vc_category
md_newsletter.categories << su_category

cb_newsletter.categories << vc_category
cb_newsletter.categories << su_category

ac_newsletter.categories << su_category

dh_newsletter.categories << ec_category
dh_newsletter.categories << co_category

hb_newsletter.categories << ec_category

rge_newsletter.categories << em_category
