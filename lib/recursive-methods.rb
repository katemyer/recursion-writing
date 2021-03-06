# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) because n number of multplications
# Space complexity: O(n) because n-1 in activation chain
def factorial(n)
    # recursion here
    if n == 0
        return 1
    elsif n == -1
        raise ArgumentError, "unable to calculate because of negative number"
    else
        return n * factorial(n-1)
end

#------------------------------------------------------------------------
# Time complexity: O(n) because n is = to number being passed
# Space complexity: O(n) because n is = to number being passed

def reverse(s)
    if s.length <= 1
        return s
    else
        return s[-1] + reverse(s[0..-2])
    end
end

#------------------------------------------------------------------------
# Time complexity: O(n) because n is number of characters based on the string
# Space complexity: O(n) because n is number of characters based on the string
def reverse_inplace(s)
     #will need a helper method
  if s == ""
    return s
  end

  temp = s[0]
  s[0] = s[s.length - 1]
  s[s.length - 1] = temp

  if s.length > 1
    s[1..-2] = reverse_inplace(s[1..-2])
  end
  return s
end

#------------------------------------------------------------------------
# Time complexity: O(n) because n is the number of bunnies
# Space complexity: O(n) because n is the number of bunnies
def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n - 1)
  end
end

#------------------------------------------------------------------------
# Time complexity: ?
# Space complexity: ?
def nested(s)
  if s == "" || s == "()"
    return true
  elsif s[0] == "(" && s[-1] == ")" && nested(s[1..-2])
    return true
  else
    return false
    end
end
#------------------------------------------------------------------------
# Time complexity: O(n)
# Space complexity: O(n^2), creates a new string on each recursive call
def search(array, value)
  return false if array.empty?
  return true if array[0] == value
  return search(array[1..-1], value)
end

#------------------------------------------------------------------------
# Time complexity: O(n)
# Space complexity: O(n^2), creates a new string on each recursive call
def is_palindrome(s)
  return true if s.length <= 1
  return false if s[0] != s[-1]
  return is_palindrome(s[1...-1])
end

#------------------------------------------------------------------------
# Time complexity: O(log10(n))
# Space complexity: O(log10(n))
# Would both complexities O(log10(n*m)) since both n and m are being divided by 10 on each recursive call?
def digit_match(n, m)
  return 1 if n == 0 && m == 0
  return 0 if n <= 1 || m <= 1 
  return n % 10 == m % 10 ? (1 + digit_match(n / 10, m / 10)) : digit_match(n / 10, m / 10)
end