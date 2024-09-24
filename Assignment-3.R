# 1. Create an array A with elements (12, 13, 14, 15, 16) and display them.
A <- c(12,13,14,15,16)
print(A)

# 2. Find the sum of all the elements of A.
sum_A <- sum(A)
print(sum_A)

# 3. Find the product of all the element of A.
product_A <- prod(A)
print(product_A)

# 4. Find the maximum and minimum element of A.
max(A)
min(A)

# 5. Find the range of array A.
range(A)

# 6. Find the mean, variance, standard deviation and median of value of A.
mean(A)
var(A)
sd(A)
median(A)

# 7. Sort the element of A both in increasing and decreasing order and store them in B and C.
B<-sort(A)
C<-sort(A, decreasing = TRUE)
print(B)
print(C)

# 8. Create a matrix of 3x4 to have the set of natural numbers.
matrix(1:12, nrow = 3, ncol = 4)

# 9. Create MxN matrix by combining A, B and C row-wise (RW) and column-wise(CW).
RW <- rbind(A,B)
CW <- cbind(A,B)
print(RW)
print(CW)

# 10. Find the 2 and 3 row element of RW.
RW[1:2,]  # RW[ROW , COL]

# 11. Find the 1 and 4 column of CW.
CW[,c(1,4)]

# 12. Using both RW and CW find sub-matrices having elements [2, 3] and [2, 4].
RW[2,3]
CW[1,1]