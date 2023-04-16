
using Plots
using CSV
using DataFrames

filepath = "clients.csv"
clients = CSV.read(filepath, DataFrame)

keys = ()

#states
state = clients[:,[:StateName]]
state = Array(state)
stateStat = Dict() #used for plotting

for key in state
    stateStat[key] = get(stateStat, key, 0) + 1
end
sort(collect(pairs(stateStat)), rev=true)
println("Bazinga")

#County
county = clients[:,[:County]]
county = Array(county)
countyStat = Dict() #used for plotting

for key in county
    countyStat[key] = get(countyStat, key, 0) + 1
end
sort(collect(pairs(countyStat)), rev=true)

#Postal
postal = clients[:,[:PostalCode]]
postal = Array(postal)
postalStat = Dict() #used for plotting

for key in postal
    postalStat[key] = get(postalStat, key, 0) + 1
end

sort(collect(pairs(postalStat)), rev=true)

#Ethnicity
ethnicity = clients[:,[:EthnicIdentity]]
ethnicity = Array(ethnicity)
ethnicityStat = Dict() #used for plotting

for key in ethnicity
    ethnicityStat[key] = get(ethnicityStat, key, 0) + 1
end
sort(collect(pairs(ethnicityStat)), rev=true)

#Age
age = clients[:,[:Age]]
age = Array(age)
ageStat = Dict() #used for plotting

for key in age
    ageStat[key] = get(ageStat, key, 0) + 1
end
sort(collect(pairs(ageStat)), rev=true)

#Gender
gender = clients[:,[:Gender]]
gender = Array(gender)
genderStat = Dict() #used for plotting

for key in gender
    genderStat[key] = get(genderStat, key, 0) + 1
end
sort(collect(pairs(genderStat)), rev=true)

#Marital Status
marital = clients[:,[:MaritalStatus]]
marital = Array(marital)
maritalStat = Dict() #used for plotting

for key in marital
    maritalStat[key] = get(maritalStat, key, 0) + 1
end
sort(collect(pairs(maritalStat)), rev=true)

#Veteran Status
veteran = clients[:,[:Veteran]]
veteran = Array(veteran)
veteranStat = Dict() #used for plotting

for key in veteran
    veteranStat[key] = get(veteranStat, key, 0) + 1
end
sort(collect(pairs(veteranStat)), rev=true)

#Veteran Status
prison = clients[:,[:Imprisoned]]
prison = Array(prison)
prisonStat = Dict() #used for plotting

for key in prison
    prisonStat[key] = get(prisonStat, key, 0) + 1
end
sort(collect(pairs(veteranStat)), rev=true)

#Number in Household
numFamily = clients[:,[:NumberInHousehold]]
numFamily = Array(numFamily)
numFamilyStat = Dict() #used for plotting

for key in numFamily
    numFamilyStat[key] = get(numFamilyStat, key, 0) + 1
end

#Annual Income
income = clients[:,[:AnnualIncome]]
income = Array(income)

incomeStat = Dict() #used for plotting

for key in income
    if key != "NULL"
        key = parse(Float16, key)
        if key <= 100
            key = "<100"
        elseif key <= 1000
            key = "101 - 1000"
        elseif key <= 5000
            key = "1001 - 5000"
        elseif key <= 10000
            key = "5001 - 10000"
        elseif key <= 20000
            key = "10001 - 20000"
        elseif key <= 30000
            key = "20001 - 30000"
        elseif key <= 40000
            key = "30001 - 40000"
        elseif key <= 50000
            key = "40001 - 50000"
        elseif key <= 60000
            key = "50001 - 60000"
        elseif key <= 70000
            key = "60001 - 70000"
        elseif key <= 80000
            key = "70001 - 80000"
        elseif key <= 90000
            key = "80001 - 90000"
        elseif key <= 100000
            key = "90001 - 100000"
        elseif key <= 110000
            key = "100001 - 110000"
        elseif key <= 120000
            key = "110001 - 120000"
        elseif key <= 130000
            key = "120001 - 130000"
        elseif key <= 140000
            key = "130001 - 140000"
        elseif key <= 150000
            key = "140001 - 150000"
        elseif key > 150000
            key = ">150000"
        end 
    end
    incomeStat[key] = get(incomeStat, key, 0) + 1
end

#checking balance
checking = clients[:,[:CheckingBalance]]
checking = Array(checking)
checkingStat = Dict() #used for plotting

for key in checking
    if key != "NULL"
        key = parse(Float16, key)
        if key <= -100
            key = "<-100"
        elseif key <= 0
            key = "-99 - 0"
        elseif key <= 100
            key = "1 - 100"
        elseif key <= 500
            key = "101 - 500"
        elseif key <= 1000
            key = "501 - 1000"
        elseif key <= 2000
            key = "1001 - 2000"
        elseif key <= 3000
            key = "2001 - 3000"
        elseif key <= 4000
            key = "3001 - 4000"
        elseif key <= 5000
            key = "4001 - 5000"
        elseif key <= 6000
            key = "5001 - 6000"
        elseif key <= 7000
            key = "6001 - 7000"
        elseif key <= 8000
            key = "7001 - 8000"
        elseif key <= 9000
            key = "8001 - 9000"
        elseif key <= 10000
            key = "9001 - 10000"
        elseif key > 10000
            key = ">10000"
        end
    end
    checkingStat[key] = get(checkingStat, key, 0) + 1
end

#Savings Balance
savings = clients[:,[:SavingsBalance]]
savings = Array(savings)
savingsStat = Dict() #used for plotting

for key in savings
    if key != "NULL"
        key = parse(Float16, key)
        if key <= 0
            key = "-99 - 0"
        elseif key <= 100
            key = "1 - 100"
        elseif key <= 500
            key = "101 - 500"
        elseif key <= 1000
            key = "501 - 1000"
        elseif key <= 2000
            key = "1001 - 2000"
        elseif key <= 3000
            key = "2001 - 3000"
        elseif key <= 4000
            key = "3001 - 4000"
        elseif key <= 5000
            key = "4001 - 5000"
        elseif key <= 6000
            key = "5001 - 6000"
        elseif key <= 7000
            key = "6001 - 7000"
        elseif key <= 8000
            key = "7001 - 8000"
        elseif key <= 9000
            key = "8001 - 9000"
        elseif key <= 10000
            key = "9001 - 10000"
        elseif key > 10000
            key = ">10000"
        end
    end
    savingsStat[key] = get(savingsStat, key, 0) + 1
end

#Investments balance
investments = clients[:,[:InvestmentsBalance]]
investments = Array(investments)
investmentsStat = Dict() #used for plotting

for key in investments
    if key != "NULL"
        key = parse(Float16, key)
        if key <= 100
            key = "<100"
        elseif key <= 1000
            key = "101 - 1000"
        elseif key <= 5000
            key = "1001 - 5000"
        elseif key <= 10000
            key = "5001 - 10000"
        elseif key <= 20000
            key = "10001 - 20000"
        elseif key <= 30000
            key = "20001 - 30000"
        elseif key <= 40000
            key = "30001 - 40000"
        elseif key <= 50000
            key = "40001 - 50000"
        elseif key <= 60000
            key = "50001 - 60000"
        elseif key <= 70000
            key = "60001 - 70000"
        elseif key <= 80000
            key = "70001 - 80000"
        elseif key <= 90000
            key = "80001 - 90000"
        elseif key <= 100000
            key = "90001 - 100000"
        elseif key <= 110000
            key = "100001 - 110000"
        elseif key <= 120000
            key = "110001 - 120000"
        elseif key <= 130000
            key = "120001 - 130000"
        elseif key <= 140000
            key = "130001 - 140000"
        elseif key <= 150000
            key = "140001 - 150000"
        elseif key > 150000
            key = ">150000"
        end 
    end
    investmentsStat[key] = get(investmentsStat, key, 0) + 1
end



xData = [];
yData = [];
for i in pairs(stateStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(countyStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(postalStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))


xData = [];
yData = [];
for i in pairs(ethnicityStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(ageStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(genderStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(maritalStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(veteranStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(prisonStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(numFamilyStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(incomeStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(checkingStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(savingsStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))

xData = [];
yData = [];
for i in pairs(investmentsStat)
    key = getindex(i,1)
    value = getindex(i,2)
    push!(xData,key)
    push!(yData,value)
end

plot(xData, yData, legend = false, ylab = "Occurences", seriestype=:bar,xticks=(1:length(xData),xData), xrotation = 90, size = (700, 700))
