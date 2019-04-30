library(rtweet)
library(dplyr)

users <- c("hillaryclinton",
           "realdonaldtrump",
           "tomilahren",
           "anncoulter",
           "madenameruca",
           "laststand2019",
           "mecdty"
          )

tweets = get_timelines(users, n=3200)
tweets = tweets %>% select(4, 5)
write_as_csv(tweets, "School/UPenn/2018-2019/CIS 419/Group Project/CIS419_FinalProject/tweetsUsers")
print("Done")
