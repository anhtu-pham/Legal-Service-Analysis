
using Plots
using CSV
using DataFrames

filepath = "clients.csv"
clients = CSV.read(filepath, DataFrame)

# fields = fieldnames(clients)
# categories = Dict()

# for client in clients
#     for field in fields
#         dict[field] = get(categories, field, 0) + 1
#     end
# end

# create an empty dictionary
dict = Dict()

# create a list of keys
keys = [1, 2, 3, 2, 1, 2]

# iterate over the keys and update the dictionary values
for key in keys
    dict[key] = get(dict, key, 0) + 1
end

# print the dictionary
println(dict)

