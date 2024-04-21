data = ChickWeight
assign("cw", data.frame(ChickWeight))
assign("Tk15", cw$Time[cw$Chick == 15])
sum(Tk15) #1

assign("Wk35", cw$weight[cw$Chick == 35])
median(Wk35) #2

assign("diet1", cw$weight[cw$Diet == 1])
assign("diet2", cw$weight[cw$Diet == 2])

mean(diet1)
mean(diet2) #3