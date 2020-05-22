# Caesar Cipher
import sys
MAX = 26

print('''

╭━━━╮╭━╮╭━┳╮╱╱╱╱╱╱╱╭━━━╮
┃╭━╮┃┃╭╯┃╭┫┃╱╱╱╱╱╱╱┃╭━╮┃
┃┃╱┃┣╯╰┳╯╰┫┃╭┳━╮╭━━┫┃╱╰╋━━┳━━┳━━┳━━┳━╮
┃┃╱┃┣╮╭┻╮╭┫┃┣┫╭╮┫┃━┫┃╱╭┫╭╮┃┃━┫━━┫╭╮┃╭╯
┃╰━╯┃┃┃╱┃┃┃╰┫┃┃┃┃┃━┫╰━╯┃╭╮┃┃━╋━━┃╭╮┃┃
╰━━━╯╰╯╱╰╯╰━┻┻╯╰┻━━┻━━━┻╯╰┻━━┻━━┻╯╰┻╯
''')


def getMessage():
  message = input('Enter your message: ')
  return message

def getKey():
  key = 0
  while True:
    print('Enter the shift number (1-26): ', end=' ')
    key = int(input())
    if (key >= 1 and key <= MAX):
      return key
    else: 
      print("Invalid Shift!")
      sys.exit(0)

def getTranslatedMessage(mode, message, key):
  if mode == 1:
    key = -key
  translated = ''

  for symbol in message:
    if symbol.isalpha():
      num = ord(symbol)
      num += key

      if symbol.isupper():
        if num > ord('Z'):
          num -= 26
        elif num < ord('A'):
          num += 26
      elif symbol.islower():
        if num > ord('z'):
          num -= 26
        elif num < ord('a'):
          num += 26

      translated += chr(num)
    else:
      translated += symbol
  print(f"\n{translated}")


ch = 'y'
while (ch == 'y' or ch == 'Y'):
  print("""
Choose amongst the following options by entering the coressponding number: 
1. Decrypt a Message
2. Encrypt a Message
3. Decrypt Message without known Shift
4. Exit """)
  n = int(input("Enter number: "))
  print(n)
  if (n == 1 or n == 2):
    message = getMessage()
    key = getKey()
    print("Your translated message is: ")
    getTranslatedMessage(n, message, key)
  elif(n==3):
    message = getMessage()
    print("All attempts at decoding: \n")
    for i in range(1,26):
      print(f"Shift={i}: ", end=" ")
      getTranslatedMessage(n, message, i)
      print()
  elif (n == 4):
    sys.exit(0)
  else:
    print("Invalid Input!")

  ch = input("Do you wish to continue? (Y/N): ")






