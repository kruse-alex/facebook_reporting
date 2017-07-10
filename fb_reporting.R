# get packages
require(Rfacebook)
 
# set parameters
my_id <- "myAppID"
my_secret <- "myAppSecret"
 
# create fb dev account and do auth
my_oauth <- fbOAuth(app_id=my_id,app_secret=my_secret)
 
# get data from the facebook page with the ID 111492028881193
getpagedata <- getPage(111492028881193, token = my_oauth, n = 10)

# get package
require(googlesheets)
 
# create a spreadsheet and fill in the data
facebook_test <- gs_new("facebook_test", ws_title = "Data From Facebook API", input = getpagedata, trim = TRUE)
