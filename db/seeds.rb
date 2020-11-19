Ad.create!([
  {title: "Burritto Succulent", user_id: 5, description: " I have an adorable burrito succulent potted in a 3 inch ceramic pot. These guys grow like crazy and will trail over the pot. They're great to hang!  Let me know if you have any questions. ", image_url: "https://res.cloudinary.com/dzx2kuqwt/image/upload/v1596668993/f3xcsqxwtjndawz4qowb.jpg"},
  {title: "Easy Elephant Bush", user_id: 5, description: " I have a great Elephant bush I'd love to pass on! I've had the plant for a year and it's already grown so much! It's perfect to hang or put on a table. ", image_url: "https://res.cloudinary.com/dzx2kuqwt/image/upload/v1596669271/gw0ypd6leocchaynaqxr.jpg"},
  {title: "Pink Begonia Clippings", user_id: 6, description: " I have a couple clippings of my pink begonia that have started to root in a glass of water. My original plant wouldn't stop growing and I thought I'd try propagation!! ", image_url: "https://res.cloudinary.com/dzx2kuqwt/image/upload/v1596721703/xoweaqklb8muy8bh320c.jpg"},
  {title: "Pink Orchid", user_id: 1, description: " This orchid has brought me joy for years! I'll be moving within the month and would love to give her a loving home! ", image_url: "https://res.cloudinary.com/dzx2kuqwt/image/upload/v1596670737/pg8otvnkvexpleegarrv.jpg"},
  {title: "Swiss Cheese Plant", user_id: 3, description: " I have a wonderful Swiss Cheese Plant (monstera deliciosa) that's outgrowing it's space. I have a clipping that I temporarily put in a nursery pot but this should be treated as a propagation.", image_url: "https://res.cloudinary.com/dzx2kuqwt/image/upload/v1596672511/ik0yvpjuh0urvdzjroyx.jpg"},
  {title: "Happy Pincushion", user_id: 3, description: " I have a 3 inch pot with 3 Happy Bean(Pincushion Peperomia) in it. One is a propagation from a another plant in the pot. These things grow like CRAZY and are great to propagate, especially cute gifts! ", image_url: "https://res.cloudinary.com/dzx2kuqwt/image/upload/v1596672773/lvkipqrvtaeptsyj5lkp.jpg"},
  {title: "Desert Pinwheel ", user_id: 3, description: "   I have a desert pinwheel rose that I’d love to share with a fellow plant lover! They’re great for bedding, can be kept indoors or outdoors! It’s requires a little more care so perfect if you’re trying to step up your plant game! ", image_url: "https://res.cloudinary.com/dzx2kuqwt/image/upload/v1596827085/p74bid5qmpo3aavx8xau.jpg"},
  {title: "Succulent assortment", user_id: 3, description: " I have three different succulents in a 3 inch pot together. The jade succulent is a recent cutting from a larger plant. It's starting to grow roots and is growing a crown but is very fragile. ", image_url: "https://res.cloudinary.com/dzx2kuqwt/image/upload/v1596678481/fhqw0wsqwsb5irko6okm.jpg"},
  {title: "Elephant Ear", user_id: 2, description: " I have had this beautiful elephant ear for about two years. With an upcoming cross country move I sadly have to part ways. Hope I can find her a good home!", image_url: "https://res.cloudinary.com/dzx2kuqwt/image/upload/v1596720840/r0l7rdcl9veiwsmwnwm6.jpg"},
  {title: "Moon Cactus", user_id: 2, description: " I have a great moon cactus! It comes in a nursery pot. I'd love to give her a new home! Let me know if you have any questions! ", image_url: "https://res.cloudinary.com/dzx2kuqwt/image/upload/v1596721127/cxpzkdkfrpgviztvdckb.jpg"}
])
Category.create!([
  {name: "Drop Off"},
  {name: "Pick Up"},
  {name: "Easy Care"},
  {name: "Medium Care"},
  {name: "Advanced Care"},
  {name: "Bright Light"},
  {name: "Low Light"},
  {name: "Pet Friendly"},
  {name: "Air Purifying"},
  {name: "Tropical"},
  {name: "Blooming"},
  {name: "Fern"},
  {name: "Succulent"},
  {name: "Vine"},
  {name: "Hanging Plant"},
  {name: "Herbs"},
  {name: "Tree"},
  {name: "Propogation"},
  {name: "Seeds"},
  {name: "Potted"}
])
Message.create!([
  {body: " Hi! Is your plant still available?", user_id: 2, conversation_id: 1},
  {body: " Yes it is, are you free to pick it up this week?", user_id: 1, conversation_id: 1},
  {body: " I am on Tuesday!", user_id: 2, conversation_id: 1},
  {body: " Great! See you then!", user_id: 1, conversation_id: 1},
  {body: " Hello! How big is the swiss chesse plant?", user_id: 3, conversation_id: 3},
  {body: " Hi! The pot is 18 in and it's 2 feet high", user_id: 6, conversation_id: 3},
  {body: " Awesome! The perfect height! Where are you located? I see it's a pick up.", user_id: 3, conversation_id: 3},
  {body: " I'm at Naper and 75th right by the Mariano's", user_id: 6, conversation_id: 3},
  {body: " Not too far! Tomorrow works, see you then!!! ", user_id: 3, conversation_id: 3},
  {body: " Awesome!", user_id: 6, conversation_id: 3},
  {body: " I love this orchid!!! ", user_id: 3, conversation_id: 4},
  {body: " Thank you!! Would you like to adopt it?", user_id: 1, conversation_id: 4},
  {body: " This succulent is so cute! I've never seen one like it! What part of town are you located? I see you would like it picked up. ", user_id: 1, conversation_id: 5},
  {body: " I've always wanted a swiss cheese plant and have been dying to try propagation!! When can you drop it off?", user_id: 1, conversation_id: 6},
  {body: " Yes I would! I've always wanted an orchid! Are you free this week? ", user_id: 3, conversation_id: 4},
  {body: " Yes I am! How does Tuesday sound? I'm around all day!", user_id: 1, conversation_id: 4},
  {body: " Yes I would. I'm in the loop. Does that work for you? ", user_id: 5, conversation_id: 5}
])
AdCategory.create!([
  {category_id: 2, ad_id: 4},
  {category_id: 3, ad_id: 4},
  {category_id: 6, ad_id: 4},
  {category_id: 13, ad_id: 4},
  {category_id: 20, ad_id: 4},
  {category_id: 8, ad_id: 4},
  {category_id: 15, ad_id: 1},
  {category_id: 2, ad_id: 1},
  {category_id: 4, ad_id: 1},
  {category_id: 6, ad_id: 1},
  {category_id: 11, ad_id: 1},
  {category_id: 20, ad_id: 1},
  {category_id: 1, ad_id: 3},
  {category_id: 3, ad_id: 3},
  {category_id: 6, ad_id: 3},
  {category_id: 10, ad_id: 3},
  {category_id: 18, ad_id: 3},
  {category_id: 2, ad_id: 7},
  {category_id: 3, ad_id: 7},
  {category_id: 6, ad_id: 7},
  {category_id: 8, ad_id: 7},
  {category_id: 15, ad_id: 7},
  {category_id: 20, ad_id: 7},
  {category_id: 2, ad_id: 9},
  {category_id: 4, ad_id: 9},
  {category_id: 6, ad_id: 9},
  {category_id: 13, ad_id: 9},
  {category_id: 20, ad_id: 9},
  {category_id: 1, ad_id: 2},
  {category_id: 7, ad_id: 2},
  {category_id: 20, ad_id: 2},
  {category_id: 17, ad_id: 2},
  {category_id: 4, ad_id: 2},
  {category_id: 1, ad_id: 6},
  {category_id: 3, ad_id: 6},
  {category_id: 6, ad_id: 6},
  {category_id: 13, ad_id: 6},
  {category_id: 20, ad_id: 6},
  {category_id: 4, ad_id: 5},
  {category_id: 2, ad_id: 5},
  {category_id: 7, ad_id: 5},
  {category_id: 18, ad_id: 5},
  {category_id: 11, ad_id: 5}
])
Conversation.create!([
  {sender_id: 2, recipient_id: 2, ad_id: 1},
  {sender_id: 3, recipient_id: 1, ad_id: 1},
  {sender_id: 1, recipient_id: 5, ad_id: 4},
  {sender_id: 2, recipient_id: 3, ad_id: 3},
  {sender_id: 3, recipient_id: 5, ad_id: 4},
  {sender_id: 3, recipient_id: 2, ad_id: 2},
  {sender_id: 3, recipient_id: 2, ad_id: 2}
])
User.create!([
  {username: "SNix", password_digest: "$2a$12$3ogmacszVFSqt2pEEsT1KOJtGsZ5NFbivTJw6.msZTfWq0Xk5VLrO", first_name: "Steph", last_name: "Nixon", email: "snixon@gmail.com"},
  {username: "amyers", password_digest: "$2a$12$XtCRmnPUkDbwAxva2f9CP.xI3nLQO4wekCS8iHVZ9tBuknBsiJb3a", first_name: "Amy", last_name: "Myers", email: "amyers@gmail.com"},
  {username: "carl", password_digest: "$2a$12$EN642wLjlT15UefuSo923.2L.ZEOxRjvTABg9dng23tXUrUkkepMa", first_name: "Carl", last_name: "Hauck", email: "carl@gmail.com"},
  {username: "JakeSnake", password_digest: "$2a$12$UMJEvUcXwkrQijTPoWcsWuC0bDtl.JOONTeIM.GqK6vgk53hX9w7i", first_name: "Jacob", last_name: "Doukas", email: "JakeSnake@gmail.com"},
  {username: "Betty", password_digest: "$2a$12$w6Or41RHl5VE2uZBxvaLuOGE7GzfInfp14VW6.y6rPSRbt4adrZ2W", first_name: "Betty", last_name: "Doukas", email: "Betty@gmail.com"},
  {username: "alex", password_digest: "$2a$12$d74.9FKEdiYRyzSoMH9LZeVBKaVj.hlYc/craE5ATODsAkSKQW8Fi", first_name: "Alex", last_name: "Rosales", email: "alex@gmail.com"},
  {username: "beccabagels", password_digest: "$2a$12$EeKYjqwJR1ULsxfJfwsvOuvzRh8b0eydmR/.xXBiSVhJa5uoLzliC", first_name: "Becca", last_name: "Doukas", email: "becca@gmail.com"},
  {username: nil, password_digest: "$2a$12$02I9vTuUV/8o6J8qlx68SuIndywRgA6ULZbTs/MhFz2H4GDQZaW/K", first_name: "Rebecca", last_name: "Doukas", email: "rebecca@gmail.com"},
  {username: nil, password_digest: "$2a$12$ojAQCJo6rXD03Lq.iDqqVOUSKvrjV2cg5vt9LxG.fmF5T58PAUcDC", first_name: "Tiff", last_name: "Smith", email: "Smith@gmail.com"}
])
