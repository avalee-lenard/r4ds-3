#
#
#
#
#
#
#
#
#
#| message: false
library(tidyverse)
library(DBI)
library(duckdb)
library(dbplyr)
#
#
#
#| message: false
con <- dbConnect(duckdb(), dbdir = "data/seda_2025.duckdb", read_only = TRUE)
tables <- dbListTables(con)
tables
dbplyr_dist <- tbl(con, "district_scores")
print(dbplyr_dist)
dbDisconnect(con)
#
#
#
#
