# create users
  jack = User.create(username: "Jackson", email: "jackson@me.com", password: "1111", password_confirmation: '1111')
  ruby = User.create(username: "Ruby", email: "ruby@kitten.com", password: "2222", password_confirmation: '2222')
  blue = User.create(username: "Blue", email: "blue@fatcat.com", password: "3333", password_confirmation: '3333')
# create categories
  string = Category.create(name: "String")
  percussion = Category.create(name: "Percussion")
  keyboard = Category.create(name: "Keyboard")
# create brands
  # string
    martin = string.brands.create(name: "Martin")
    taylor = string.brands.create(name: "Taylor")
    gibson = string.brands.create(name: "Gibson")
    fender = string.brands.create(name: "Fender")
    ibanez = string.brands.create(name: "Ibanez")
  # percussion
    sonor = percussion.brands.create(name: "Sonor")
    gretsch = percussion.brands.create(name: "Gretsch")
    pearl = percussion.brands.create(name: "Pearl")
    ludwig = percussion.brands.create(name: "Ludwig") 
    bdc = percussion.brands.create(name: "British Drum Company")
  # keyboard
    yamaha = keyboard.brands.create(name: "Yamaha")
    casio = keyboard.brands.create(name: "Casio")
    roland = keyboard.brands.create(name: "Roland")
    kawai = keyboard.brands.create(name: "Kawai")
    korg = keyboard.brands.create(name: "Korg")
# create instruments
  # string
    # martin
      d26 = User.find(1).instruments.create(name: "D-26", instrument_type: "Guitar", description: "6-string Acoustic", price: 2899.00, category_id: Category.find(1).id, brand_id: Brand.find(1).id)
      d45 = User.find(2).instruments.create(name: "D-45 Fire & Ice", instrument_type: "Guitar", description: "6-string Acoustic Special Edition", price: 29999.00, category_id: Category.find(1).id, brand_id: Brand.find(1).id)
      d15 = User.find(3).instruments.create(name: "D-15", instrument_type: "Guitar", description: "6-string Auditorium Acoustic", price: 1279.00, category_id: Category.find(1).id, brand_id: Brand.find(1).id)
    # taylor
      ce304 = User.find(1).instruments.create(name: "304ce", instrument_type: "Guitar", description: "6-string Electric/Acoustic", price: 2199.00, category_id: Category.find(1).id, brand_id: Brand.find(2).id)
      ce814 = User.find(2).instruments.create(name: "814ce", instrument_type: "Guitar", description: "6-string Electric/Acoustic V-class", price: 3999.00, category_id: Category.find(1).id, brand_id: Brand.find(2).id)
      gsmini = User.find(3).instruments.create(name: "GS Mini", instrument_type: "Guitar", description: "6-string Electric/Acoustic", price: 799.00, category_id: Category.find(1).id, brand_id: Brand.find(2).id)
    # gibson
      lespaul = User.find(1).instruments.create(name: "Les Paul '60s Bourbon Burst", instrument_type: "Guitar", description: "6-string Electric", price: 2499.00, category_id: Category.find(1).id, brand_id: Brand.find(3).id)
      thunderbird = User.find(2).instruments.create(name: "Thunderbird", instrument_type: "Guitar", description: "4-string Electric Bass", price: 2279.00, category_id: Category.find(1).id, brand_id: Brand.find(3).id)
      flyingv = User.find(3).instruments.create(name: "Flying V", instrument_type: "Guitar", description: "6-string Electric", price: 1699.00, category_id: Category.find(1).id, brand_id: Brand.find(3).id)
    # fender
      tele = User.find(1).instruments.create(name: "Telecaster", instrument_type: "Guitar", description: "6-string Electric", price: 824.99, category_id: Category.find(1).id, brand_id: Brand.find(4).id)
      strat = User.find(2).instruments.create(name: "Stratocaster", instrument_type: "Guitar", description: "6-string Electric", price: 1149.99, category_id: Category.find(1).id, brand_id: Brand.find(4).id)
      jazzmaster = User.find(3).instruments.create(name: "Jazzmaster", instrument_type: "Guitar", description: "6-string Electric", price: 1379.99, category_id: Category.find(1).id, brand_id: Brand.find(4).id)
    # ibanez
      s1070pbz = User.find(1).instruments.create(name: "S1070PBZ", instrument_type: "Guitar", description: "6-string Electric", price: 1379.99, category_id: Category.find(1).id, brand_id: Brand.find(5).id)
      rg652ahm = User.find(2).instruments.create(name: "RG652AHM", instrument_type: "Guitar", description: "6-string Electric", price: 1599.99, category_id: Category.find(1).id, brand_id: Brand.find(5).id)
      pn12e = User.find(3).instruments.create(name: "PN12E", instrument_type: "Guitar", description: "6-string Acoustic", price: 199.99, category_id: Category.find(1).id, brand_id: Brand.find(5).id)
  # percussion
    # sonor
      aq2 = User.find(1).instruments.create(name: "AQ2", instrument_type: "Drum Set", description: "Maple 5-Piece", price: 999.99, category_id: Category.find(2).id, brand_id: Brand.find(6).id)
      sq1 = User.find(2).instruments.create(name: "SQ1", instrument_type: "Drum Set", description: "3-Piece, 24 in. Kick", price: 2899.99, category_id: Category.find(2).id, brand_id: Brand.find(6).id)
      vintage = User.find(3).instruments.create(name: "Sonor Vintage", instrument_type: "Drum Set", description: "3-Piece", price: 2999.99, category_id: Category.find(2).id, brand_id: Brand.find(6).id)
    # gretsch
      catalina = User.find(1).instruments.create(name: "Catalina Club", instrument_type: "Drum Set", description: "Jazz 4-Piece", price: 699.99, category_id: Category.find(2).id, brand_id: Brand.find(7).id)
      brooklyn = User.find(2).instruments.create(name: "Brooklyn Micro", instrument_type: "Drum Set", description: "4-Piece", price: 1899.57, category_id: Category.find(2).id, brand_id: Brand.find(7).id)
      renown = User.find(3).instruments.create(name: "Renown", instrument_type: "Drum Set", description: "4-Piece, 20 in. Kick", price: 699.99, category_id: Category.find(2).id, brand_id: Brand.find(7).id)
    # pearl
      cabana = User.find(1).instruments.create(name: "Cabana", instrument_type: "Cajon", description: "Cajon", price: 199.99, category_id: Category.find(2).id, brand_id: Brand.find(8).id)
      compact = User.find(2).instruments.create(name: "Compact Traveler", instrument_type: "Drum Set", description: "Traveler 2-piece", price: 215.00, category_id: Category.find(2).id, brand_id: Brand.find(8).id)
      decade = User.find(3).instruments.create(name: "Decade", instrument_type: "Drum Set", description: "Maple 3-piece", price: 637.00, category_id: Category.find(2).id, brand_id: Brand.find(8).id)
    # ludwig
      classic = User.find(1).instruments.create(name: "Classic", instrument_type: "Drum Set", description: "Oak Fab 3-Piece", price: 1949.00, category_id: Category.find(2).id, brand_id: Brand.find(9).id)
      element = User.find(2).instruments.create(name: "Element Evolution", instrument_type: "Drum Set", description: "5-Piece", price: 799.00, category_id: Category.find(2).id, brand_id: Brand.find(9).id)
      breakbeats = User.find(3).instruments.create(name: "Breakbeats by Questlove", instrument_type: "Drum Set", description: "4-Piece", price: 407.00, category_id: Category.find(2).id, brand_id: Brand.find(9).id)
    # bdc
      legend = User.find(1).instruments.create(name: "Legend Series", instrument_type: "Drum Set", description: "7-Piece", price: 5940.27, category_id: Category.find(2).id, brand_id: Brand.find(10).id)
      birch = User.find(2).instruments.create(name: "Legend Club", instrument_type: "Drum Set", description: "Birch 3-Piece", price: 2569, category_id: Category.find(2).id, brand_id: Brand.find(10).id)
      etimoe = User.find(3).instruments.create(name: "Wild Etimoe", instrument_type: "Drum Set", description: "4-Piece", price: 3599.99, category_id: Category.find(2).id, brand_id: Brand.find(10).id)
  # keyboard
    # yamaha
      f51 = User.find(1).instruments.create(name: "PSR-F51", instrument_type: "Keyboard", description: "61 Key Portable", price: 109.99, category_id: Category.find(3).id, brand_id: Brand.find(11).id)
      arius = User.find(2).instruments.create(name: "Arius YDP-142", instrument_type: "Piano", description: "Digital Console Piano", price: 1099.99, category_id: Category.find(3).id, brand_id: Brand.find(11).id)
      ypg535 = User.find(3).instruments.create(name: "YPG-535", instrument_type: "Piano", description: "88 Key Portable Grand Piano", price: 109.99, category_id: Category.find(3).id, brand_id: Brand.find(11).id)
    # casio
      privia = User.find(1).instruments.create(name: "Privia PX-S2800", instrument_type: "Piano", description: "88 Key Stage Piano", price: 849.00, category_id: Category.find(3).id, brand_id: Brand.find(12).id)
      casiotone = User.find(2).instruments.create(name: "Casiotone CT-S200", instrument_type: "Keyboard", description: "61 Key Portable Digital", price: 119.00, category_id: Category.find(3).id, brand_id: Brand.find(12).id)
      ap710bk = User.find(3).instruments.create(name: "AP-710BK Celviano", instrument_type: "Piano", description: "88 Key Digital Piano", price: 2499.00, category_id: Category.find(3).id, brand_id: Brand.find(12).id)
    # roland
      gopiano = User.find(1).instruments.create(name: "GO:PIANO", instrument_type: "Piano", description: "61 Key Digital Piano", price: 499.00, category_id: Category.find(3).id, brand_id: Brand.find(13).id)
      rd88 = User.find(2).instruments.create(name: "RD-88", instrument_type: "Piano", description: "88 Key Stage Piano", price: 1199.00, category_id: Category.find(3).id, brand_id: Brand.find(13).id)
      gp609 = User.find(3).instruments.create(name: "GP-609", instrument_type: "Piano", description: "88 Key Digital Grand Piano", price: 9999.00, category_id: Category.find(3).id, brand_id: Brand.find(13).id)
    # kawai
      ca58 = User.find(1).instruments.create(name: "CA58", instrument_type: "Piano", description: "88 Key Digital Home Piano", price: 3099.00, category_id: Category.find(3).id, brand_id: Brand.find(14).id)
      es8 = User.find(2).instruments.create(name: "ES8", instrument_type: "Piano", description: "88 Key Digital Piano", price: 3099.00, category_id: Category.find(3).id, brand_id: Brand.find(14).id)
      mp11se = User.find(3).instruments.create(name: "MP11SE", instrument_type: "Piano", description: "88 Key Stage Piano/Master Contoller", price: 2799.00, category_id: Category.find(3).id, brand_id: Brand.find(14).id)
    # korg
      minilogue = User.find(1).instruments.create(name: "Minilogue", instrument_type: "Synthesizer", description: "4-Voice Analog Synthesizer", price: 499.00, category_id: Category.find(3).id, brand_id: Brand.find(15).id)
      kronos = User.find(2).instruments.create(name: "Kronos", instrument_type: "Synthesizer", description: "88 Note Keyboard Synthesizer", price: 3899.00, category_id: Category.find(3).id, brand_id: Brand.find(15).id)
      kross = User.find(3).instruments.create(name: "Kross 2-88-M", instrument_type: "Synthesizer", description: "88 Key Synthesizer", price: 1279.00, category_id: Category.find(3).id, brand_id: Brand.find(15).id)
# create reviews
  # string
    # martin
      # d28
        d281 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(1).id)
        d282 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(1).id)
        d283 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(1).id)
      # d43
        d431 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(2).id)
        d432 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(2).id)
        d433 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(2).id)
      # d15
        d151 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(3).id)
        d152 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(3).id)
        d153 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(3).id)
    # taylor
      # ce304
        ce3031 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(4).id)
        ce3042 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(4).id)
        ce3043 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(4).id)
      # ce814
        ce8141 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(5).id)
        ce8142 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(5).id)
        ce8143 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(5).id)
      # gsmini
        gsmini1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(6).id)
        gsmini2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(6).id)
        gsmini3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(6).id)
    # gibson
      # lespaul
        lespaul1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(7).id)
        lespaul2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(7).id)
        lespaul3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(7).id)
      # thunderbird
        thunderbird1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(8).id)
        thunderbird2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(8).id)
        thunderbird3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(8).id)
      # flyingv
        flyingv1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(9).id)
        flyingv2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(9).id)
        flyingv3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(9).id)
    # fender
      # tele
        tele1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(10).id)
        tele2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(10).id)
        tele3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(10).id)
      # strat
        strat1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(11).id)
        strat2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(11).id)
        strat3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(11).id)
      # jazzmaster
        jazzmaster1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(12).id)
        jazzmaster2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(12).id)
        jazzmaster3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(12).id)
    # ibanez
      # s1070pbz
        s1070pbz1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(13).id)
        s1070pbz2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(13).id)
        s1070pbz3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(13).id)
      # rg652ahm
        rg652ahm1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(14).id)
        rg652ahm2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(14).id)
        rg652ahm3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(14).id)
      # pn12e
        pn12e1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(15).id)
        pn12e2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(15).id)
        pn12e3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(15).id)
  # percussion
    # sonor
      # aq2
        aq21 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(16).id)
        aq22 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(16).id)
        aq23 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(16).id)
      # sq1
        sq11 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(17).id)
        sq12 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(17).id)
        sq13 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(17).id)
      # vintage
        vintage1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(18).id)
        vintage2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(18).id)
        vintage3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(18).id)
    # gretsch
      # catalina
        catalina1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(19).id)
        catalina2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(19).id)
        catalina3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(19).id)
      # brooklyn
        brooklyn1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(20).id)
        brooklyn2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(20).id)
        brooklyn3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(20).id)
      # renown
        renown1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(21).id)
        renown2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(21).id)
        renown3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(21).id)
    # pearl
      # cabana
        cabana1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(22).id)
        cabana2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(22).id)
        cabana3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(22).id)
      # compact
        compact1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(23).id)
        compact2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(23).id)
        compact3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(23).id)
      # decade
        decade1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(24).id)
        decade2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(24).id)
        decade3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(24).id)
    # ludwig
      # classic
        classic1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(25).id)
        classic2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(25).id)
        classic3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(25).id)
      # element
        element1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(26).id)
        element2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(26).id)
        element3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(26).id)
      # breakbeats
        breakbeats1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(27).id)
        breakbeats2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(27).id)
        breakbeats3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(27).id)
    # bdc
      # legend
        legend1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(28).id)
        legend2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(28).id)
        legend3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(28).id)
      # birch
        birch1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(29).id)
        birch2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(29).id)
        birch3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(29).id)
      # etimoe
        etimoe1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(30).id)
        etimoe2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(30).id)
        etimoe3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(30).id)
  # keyboard
    # yamaha
      # f51
        f511 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(31).id)
        f512 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(31).id)
        f513 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(31).id)
      # arius
        arius1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(32).id)
        arius2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(32).id)
        arius3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(32).id)
      # ypg533
        ypg5331 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(33).id)
        ypg5332 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(33).id)
        ypg5333 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(33).id)
    # casio
      # privia
        privia1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(34).id)
        privia2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(34).id)
        privia3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(34).id)
      # casiotone
        casiotone1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(35).id)
        casiotone2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(35).id)
        casiotone3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(35).id)
      # ap710bk
        ap710bk1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(36).id)
        ap710bk2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(36).id)
        ap710bk3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(36).id)
    # roland
      # gopiano
        gopiano1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(37).id)
        gopiano2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(37).id)
        gopiano3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(37).id)
      # rd88
        rd881 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(38).id)
        rd882 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(38).id)
        rd883 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(38).id)
      # gp609
        gp6091 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(39).id)
        gp6092 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(39).id)
        gp6093 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(39).id)
    # kawai
      # ca58
        ca581 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(40).id)
        ca582 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(40).id)
        ca583 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(40).id)
      # es8
        es81 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(41).id)
        es82 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(41).id)
        es83 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(41).id)
      # mp11se
        mp11se1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(42).id)
        mp11se2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(42).id)
        mp11se3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(42).id)
    # korg
      # minilogue
        minilogue1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(43).id)
        minilogue2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(43).id)
        minilogue3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(43).id)
      # kronos
        kronos1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(44).id)
        kronos2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(44).id)
        kronos3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(44).id)
      # kross
        kross1 = User.find(1).reviews.create(rating: 5, title: "Not too bad", content: "Good, but could be better", instrument_id: Instrument.find(45).id)
        kross2 = User.find(2).reviews.create(rating: 2, title: "Awful", content: "Not impressed", instrument_id: Instrument.find(45).id)
        kross3 = User.find(3).reviews.create(rating: 10, title: "Incredible", content: "Perfect!", instrument_id: Instrument.find(45).id)

puts "Seeds Created Successfully"