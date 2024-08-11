#----------------
# Simple Example
#----------------
install.packages(c("devtools","jsonlite","httr"))
devtools::install_github("AndreasFischer1985/qqBaseX")
clientId="jobboerse-bewerbersuche-ui"

url="https://rest.arbeitsagentur.de/jobboerse/bewerbersuche-service/pc/v1/bewerber?angebotsart=ar"
data_request=httr::GET(url=url, httr::add_headers(.headers=c("X-API-Key"=clientId)),
        config=httr::config(connecttimeout=60))
data_request
data=httr::content(data_request)

writeLines(jsonlite::toJSON(data$facetten,pretty=TRUE,auto_unbox=TRUE),paste0(Sys.Date(),"_bewerbersuche_facetten.json"))

