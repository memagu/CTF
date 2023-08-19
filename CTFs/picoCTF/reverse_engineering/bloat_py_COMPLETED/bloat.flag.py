import sys
a = "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"+ \
            "[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~ "

def check_password(password):
  if password == "happychance":
    return True
  else:
    print("That password is incorrect")
    sys.exit(0)
    return False

def decrypted_flag(encrypted_flag_2):
  return decrypt(encrypted_flag_2.decode(), "rapscallion")

def enter_password():
  return input("Please enter correct password for flag: ")

def encrypted_flag():
  return open('flag.txt.enc', 'rb').read()

def welcome_back():
  print("Welcome back... your flag, user:")

def decrypt(password, decrypted_flag_2):
    decrypted_flag_2_copy = decrypted_flag_2
    i = 0
    while len(decrypted_flag_2_copy) < len(password):
        decrypted_flag_2_copy = decrypted_flag_2_copy + decrypted_flag_2[i]
        i = (i + 1) % len(decrypted_flag_2)        
    return "".join([chr(ord(arg422) ^ ord(arg442)) for (arg422,arg442) in zip(password,decrypted_flag_2_copy)])


encrypted_flag_2 = encrypted_flag()
password = enter_password()
check_password(password)
welcome_back()
decrypted_flag_2 = decrypted_flag(encrypted_flag_2)
print(decrypted_flag_2)
sys.exit(0)

