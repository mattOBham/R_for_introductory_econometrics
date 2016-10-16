library(maps)

# load unemployment data and FIPS county codes (included in maps)
data(unemp)
data(county.fips)

# match counties from unemployment data to counties plotted by FIPS code
plotdata <- unemp$unemp[match(county.fips$fips, unemp$fips)]
# transform data to color code: gray scale. max unemp=0 (black)
plotcol  <- gray(1-plotdata/max(plotdata))

# plot county map filled respective color (no boundary lines):
map("county", col=plotcol, fill=TRUE,resolution=0,lty = 0)

# add state boundaries as black lines:
map("state",add = TRUE)
