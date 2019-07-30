# Officer creation section

Personnel.create(name: "TT0707", email: "TT0707@empire.org", pic_url: "https://images.halloweencostumes.com/products/42516/1-1/mens-finn-fn-2187-stormtrooper-costume2.jpg", role: "officer", bio: "clone created 19 standard years ago.")
Personnel.create(name: "Mundo Swift", email: "dontcontactme@empire.org", pic_url: "https://i.pinimg.com/originals/8f/f1/55/8ff15551837374c3b76a8c8943d9b66b.jpg", role: "officer", bio: "Former merc and informant.")
Personnel.create(name: "Plasma Fury", email: "pfury@empire.org", pic_url: "https://i.pinimg.com/236x/56/a9/2e/56a92e109ce5b2ec0a358caeddf066ec--star-wars-empire-sith-empire.jpg", role: "officer", bio: "Female variant clone created 15 standard years ago.")
Personnel.create(name: "Benten", email: "b10@empire.org", pic_url: "http://vignette1.wikia.nocookie.net/ben10/images/e/e4/Vilgax_Sword1.png", role: "officer", bio: "I was born in the wrong universe.")
doom = Personnel.create(name: "Doom Thu", email: "snake@empire.org", pic_url: "https://vignette.wikia.nocookie.net/villains/images/b/bc/Doom.v1.png", role: "officer", bio: "People say I sound like Darth Vader.")
air = Personnel.create(name: "Literal Airplane", email: "757@empire.org", pic_url: "http://www.diecastairplane.com/shared/images/NewRay/IN-EZF117.jpg", role: "officer", bio: "I believe I can fly.")
bird =Personnel.create(name: "Birda Werd", email: "martymcfly@empire.org", pic_url: "https://rlv.zcache.com/funny_green_martian_alien_chicken_binder-r3eae8d39ade44dbc88b440b93013ad3e_xz8dx_8byvr_307.jpg", role: "officer", bio: "I came before the egg.")
Personnel.create(name: "Rose the Bose", email: "ironfist@empire.org", pic_url: "https://i.ytimg.com/vi/HhbpxVOHWCM/maxresdefault.jpg", role: "officer", bio: "I am a cool mom.")
Personnel.create(name: "Gamora Danger", email: "dangerous@empire.org", pic_url: "https://cnet3.cbsistatic.com/img/xwzE_ZxO54hqoX2Xmke4q1s7EXk=/2018/11/14/424a7378-fa4e-412c-9ef9-751e81e648fa/gamora.jpg", role: "officer", bio: "Damn Space Stone.")

# Trooper creation section
qw = Personnel.create(name: "QW6789", email: "QW6789@empire.org", pic_url: "https://images.halloweencostumes.com/products/42516/1-1/mens-finn-fn-2187-stormtrooper-costume2.jpg", role: "trooper", bio: "clone created 4 standard years ago.")
po = Personnel.create(name: "PO2525", email: "PO2525@empire.org", pic_url: "https://images.halloweencostumes.com/products/42516/1-1/mens-finn-fn-2187-stormtrooper-costume2.jpg", role: "trooper", bio: "clone created 1 standard years ago.")
ki = Personnel.create(name: "KI8734", email: "KI8734@empire.org", pic_url: "https://images.halloweencostumes.com/products/42516/1-1/mens-finn-fn-2187-stormtrooper-costume2.jpg", role: "trooper", bio: "clone created 6 standard years ago.")
nm = Personnel.create(name: "NM9482", email: "NM9482@empire.org", pic_url: "https://images.halloweencostumes.com/products/42516/1-1/mens-finn-fn-2187-stormtrooper-costume2.jpg", role: "trooper", bio: "clone created 7 standard years ago.")
oo = Personnel.create(name: "OO8888", email: "OO8888@empire.org", pic_url: "https://images.halloweencostumes.com/products/42516/1-1/mens-finn-fn-2187-stormtrooper-costume2.jpg", role: "trooper", bio: "clone created 2 standard years ago.")

# Duty creation section

duty1 = Duty.create(location: "Endor", description: "Basic survey", personnel_id: doom.id)
duty2 = Duty.create(location: "Ars", description: "liberating natives", personnel_id: air.id)
duty3 = Duty.create(location: "Flowers", description: "Brooke's Run", personnel_id: bird.id)
duty4 = Duty.create(location: "Flat", description: "Heavy combat", personnel_id: doom.id)
duty5 = Duty.create(location: "Hashy", description: "aight fuck it", personnel_id: air.id)
duty6 = Duty.create(location: "Diamia", description: "What can I do?", personnel_id: bird.id)

# Assignment creation section

Assignment.create(status: false, comment: "", personnel_id: qw.id, duty_id: duty1.id)
Assignment.create(status: false, comment: "", personnel_id: po.id, duty_id: duty1.id)
Assignment.create(status: false, comment: "", personnel_id: ki.id, duty_id: duty2.id)
Assignment.create(status: false, comment: "", personnel_id: ki.id, duty_id: duty3.id)
Assignment.create(status: false, comment: "", personnel_id: nm.id, duty_id: duty6.id)