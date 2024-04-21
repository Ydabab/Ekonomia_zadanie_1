assign("m1", matrix(1:4, nrow=2, ncol=2))
m1%*%solve(m1) #1

assign("x0", 1:10 * 0 + c(1))
assign("x1", c(2,4,1,6,9,3,2,9,10,7))
assign("x2", c(1.5,0.2,0.1,2,3.1,1.2,0.4,2.9,2.5,1.9))
assign("y", c(12,15,10,19,26,13,13,21,29,18))
assign("x12", append(x1, x2))
assign("values", append(x12, x0))
assign("m2", matrix(values, nrow=10, ncol=3))
(solve(t(m2)%*%m2))%*%t(m2)*y #2