module Exercise6 where
-- ISBN-10 identifiers are ten digits. The first nine digits are on the range 0 to 9. The last digit can be either on the range 0 to 9 or the letter 'X' used to indicate a value of 10.
--
--For an ISBN-10 to be valid, the sum of the digits multiplied by their position has to equal zero modulo 11. For example, the ISBN-10: 1112223339 is valid because:
--
--(((1*1)+(1*2)+(1*3)+(2*4)+(2*5)+(2*6)+(3*7)+(3*8)+(3*9)+(9*10)) % 11) == 0
--Complete the validISBN10() function.
--
--validISBN10 "1112223339" -- should return True
--validISBN10 "1234554321" -- should return True
--validISBN10 "1234512345" -- should return False

validISBN10 :: String -> Bool
validISBN10 = undefined
