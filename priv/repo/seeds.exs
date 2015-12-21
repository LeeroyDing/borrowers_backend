# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BorrowersBackend.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias BorrowersBackend.Repo
alias BorrowersBackend.Friend

[%Friend{first_name: "Sankalp",
         last_name: "MJay",
         email: "jiminyc@101.com",
         twitter: "jimjiminy",
         total_articles: 0},
 %Friend{first_name: "Glob",
         last_name: "Glbon",
         email: "adfj",
         twitter: "ahjk",
         total_articles: 0},
 %Friend{first_name: "vinay",
         last_name: "bongale",
         email: "vinayb1010@gmail.com",
         twitter: "this is vinay",
         total_articles: 0},
 %Friend{first_name: "vinay",
         last_name: "bongale",
         email: "vinayb1010@gmail.com",
         twitter: "hi this is vinay",
         total_articles: 0},
 %Friend{first_name: "karthik",
         last_name: "m s",
         email: "ksfa@addkjfadf.com",
         twitter: "hi this is karthik",
         total_articles: 0},
 %Friend{first_name: "test",
         last_name: "test",
         email: "test@gmail.com",
         twitter: "hi this is test",
         total_articles: 0},
 %Friend{first_name: "alok",
         last_name: "anand",
         email: "anand@teamdrg.com",
         twitter: "hi this is alok",
         total_articles: 0},
 %Friend{first_name: "vignesh",
         last_name: "thangasaru",
         email: "vthangasaru@teamdrg.com",
         twitter: "hi this is vignesh",
         total_articles: 0},
 %Friend{first_name: "Bob",
         last_name: "Richardson",
         email: "bob@bob.com",
         twitter: "Bobbob",
         total_articles: 1},
 %Friend{first_name: "Elmer",
         last_name: "Fudd",
         email: "elmerf@rabbits.com",
         twitter: "rabbithunter",
         total_articles: 0},
 %Friend{first_name: "Carlo",
         last_name: "Goldoni",
         email: "carlo@goldoni.com",
         twitter: "Twittera",
         total_articles: 2},
 %Friend{first_name: "Bob",
         last_name: "Johnson",
         email: "bj@mst3k.io",
         twitter: "@slab_bulkhead",
         total_articles: 3},
 %Friend{first_name: "Edoardo",
         last_name: "Palazuelos",
         email: "epalazue",
         twitter: "epalazue",
         total_articles: 2},
 %Friend{first_name: "Tim",
         last_name: "Duncan",
         email: "td@td.com",
         twitter: "td21",
         total_articles: 2}
]
|> Enum.each(&Repo.insert!(&1))
