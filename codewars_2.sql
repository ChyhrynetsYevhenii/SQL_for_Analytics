--Johnny is a farmer and he annually holds a beet farmers convention "Drop the beet".
--Every year he takes photos of farmers handshaking. Johnny knows that no
--two farmers handshake more than once. He also knows that some of the possible handshake combinations may not happen.
--However, Johnny would like to know the minimal amount of people that participated this year just by
--counting all the handshakes. Help Johnny by writing a function, that takes the amount
--of handshakes and returns the minimal amount of people needed to perform these handshakes (a pair
--of farmers handshake only once).


--# write your SQL statement here:
-- you are given a table 'participants' with column 'n' (number of handshakes).
-- return a table with this column and your result in a column named 'res'.
select n,
  case
  when n=1 then n*2
  when n%2=0 then (n*2)/3
  when n%2=1 then (n*2)/3 + 1
  end as res
 from participants