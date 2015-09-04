setwd("Desktop/coupons/")
detail_train <- read.csv(file="coupon_detail_train.csv")
# pref and small area names of coupon
area_train <- read.csv(file="coupon_area_train.csv")
# list of unique coupons
list_train <- read.csv(file="coupon_list_train.csv")
# list of coupon visit by user
visit_train <- read.csv(file="coupon_visit_train.csv")
# prefectural office and coordinates for each pref name
pref_locations <- read.csv(file="prefecture_locations.csv")
# list of unique users
user_list <- read.csv(file="user_list.csv")


# merge pref locations on user list var PREF_NAME in detail
user <- merge(user_list, pref_locations, by="PREF_NAME", all.x = TRUE)
# merge user details on coupon detail train
detail <- merge(detail_train, user, by="USER_ID_hash")
# merge coupon details on detail 
detail <- merge(detail, list_train, by="COUPON_ID_hash")

# 22782 unique user id for which have details on coupons
length(unique(detail$USER_ID_hash))
# 22805 unique users have made visits
length(unique(visit_train$USER_ID_hash))
# 22873 users in list of users
nrow(user_list)

# 19368 unique coupon id
length(unique(detail$COUPON_ID_hash))
# 32628 unique coupon id have been viewed
length(unique(visit_train$VIEW_COUPON_ID_hash))




# outcome var: PURCHASE_FLG == 1
# in train, 4% of train visits are purchases [sampling techniques!!]





# linear

# decision tree

# random forest
