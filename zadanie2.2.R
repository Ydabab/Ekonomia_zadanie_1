assign("w1", c(12,5,20,18,8.5,10,4,101,-2))
assign("over10", w1[w1>10])
sum(over10) #1

assign("w2", seq(2,28/3, 2/3))
w2 * c(T,F,F) #2

assign("w3", c(2,3,7,8,2))
assign("w4", c(9,1,2,0,2))
typeof(-w3<=w4) #3

assign("w5", append(letters, c("ą","ć","ę","ł","ń","ó","ś","ż","ź")))
length((w5)) #4

set.seed(76)
assign("losowe", runif(1000))
e1071::kurtosis(losowe) #5