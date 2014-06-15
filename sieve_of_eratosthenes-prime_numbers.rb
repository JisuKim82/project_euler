# Sieve of Eratosthenes

# The algorithm needs to have an upper limit for the primes to find. Lets call this limit N
# The algorithm works as follows.

# Create a list l of consecutive integers {2,3,…,N}.
# Select p as the first prime number in the list, p=2.
# Remove all multiples of p from the l.
# set p equal to the next integer in l which has not been removed.
# Repeat steps 3 and 4 until p^2 > N, all the remaining numbers in the list are primes


prime = 2
index = 0

list = (2..20).to_a

while (prime**2 < 20)
  list = list.select{|x| (x % list[index] != 0) || (list[index] == x)}
  index += 1
  p prime = list[index]
end

