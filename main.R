avgprecvalues <- c()
totprecvalues <- c()
years <- c()

for(x in 2011:2024){
    years <- c(years, as.character(x))
}

for(x in 2011:2024){
    var_name <- paste0("data_", x)
    assign(var_name, mean(subset(nums2011_2024, format(DATE, "%Y") == as.character(x))$PRCP))
    avgprecvalues <- c(avgprecvalues, mean(subset(nums2011_2024, format(DATE, "%Y") == as.character(x))$PRCP))
}

for(x in 2011:2024){
    var_name <- paste0("total_", x)
    assign(var_name, sum(subset(nums2011_2024, format(DATE, "%Y") == as.character(x))$PRCP))
    totprecvalues <- c(totprecvalues, sum(subset(nums2011_2024, format(DATE, "%Y") == as.character(x))$PRCP))
}

print(years)
