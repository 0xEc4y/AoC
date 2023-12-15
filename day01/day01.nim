import std/strformat, std/tables, std/streams, std/strutils, std/algorithm

# Achieved first AoC gold star with this =D !!
# More to come!

# Will finish part 2 soon

# initialize a total
var total = 0

var
    firstDigit: char
    secondDigit: char
    doubleDigitNum: string
    firstFound = false
    secondFound = false

# equivalent to hash map
let word2Int = {
  "one" : 1,
  "two" : 2,
  "three" : 3,
  "four" : 4,
  "five" : 5,
  "six" : 6,
  "seven" : 7,
  "eight" : 8,
  "nine" : 9}.toTable


# parse single line, find first and last integer, combine to form string and add that number to total
proc parseByLinePT1(input: string): string =
  firstFound = false
  secondFound = false

  for currentChar in input:
    if not firstFound:
      if currentChar.isDigit:
        firstDigit = currentChar
        firstFound = true
  for currentChar in input.reversed:
    if not secondFound:
      if currentChar.isDigit:
        secondDigit = currentChar
        secondFound = true

  doubleDigitNum = &"{firstDigit}{secondDigit}"
  total += parseInt(doubleDigitNum)
  #echo &"first number: {firstDigit}\tsecond number: {secondDigit}\tas one: {doubleDigitNum}\ttotal: {total}"

#[ proc parseByLinePT2(input: string) string =
  firstFound = false
  secondFound = false

  for currentChar in input:
    if not firstFound:
      if input.find(word2Int[i]) not -1 or:

]#

when isMainModule:
  let contents = newFileStream("input.txt", fmRead)
  var inputLine = ""

  if not isNil(contents):
    # comments are numbering loop for debugging
    #var i = 0
    while contents.readLine(inputLine):
      #if i < 10:
      discard parseByLinePT1(inputLine)
      stdout.write &"{inputLine}\ttotal: {total}\n"
      #else:
      #  quit()
      #i.inc
