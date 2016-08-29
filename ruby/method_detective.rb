 	# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".gsub!('o','oo')
"zom".sub('o','oo')
# => “zoom”

"enhance".center(20)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".ljust(18, ' suspects')
"the usual" << " suspects"
"the usual".insert(-1, ' suspects')
#=> "the usual suspects"

" suspects".rjust(18, 'the usual')
" suspects".prepend('the usual')
" suspects".insert(1, 'the usual')
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1, 39)
"The mystery of the missing first letter".slice!(1..-1)
"The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".bytes
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# the 122 lists the ASCII decimal control code for this letter

"How many times does the letter 'a' appear in this string?".count('a')
# => 4


"JaSon".swapcase
# => "jAsON"

"no".sub('o','ooooooooo')
# => "nooooooooo"

"HEY".downcase
# => "hey"

"hey".upcase
# => "HEY"

"centerme".center(100)
# => "                                              centerme                                              "

"Some gibberish text for testing purposes"[5..-10]
# => "gibberish text for testing"

"last".chop
# => "las"

" second".prepend('first,')
# => "first, second"

"first," << " second"

"heeeeeeeeeeey".squeeze
# => "hey"