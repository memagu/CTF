ciphertext = ""

while True:
    ciphertext = input("Input ciphertext: ")
    if len(ciphertext) == 0:
        quit()

    if len(ciphertext) % 3 == 0:
        break

    print("Invalid input! Lenth of input must be a multiple of 3.")

ciphertext_mutable = ciphertext

i = 0
option_sequence = ""

while True:
    option = input(
        "Input option (\u001b[32m0-5\u001b[0m, \u001b[32mn\u001b[0mext, \u001b[32mp\u001b[0mrevious, \u001b[32mq\u001b[0muit, entered \u001b[32mo\u001b[0mptions): ").lower()
    if option not in ["0", "1", "2", "3", "4", "5", "n", "p", "q", "o"]:
        print("Invalid option!")
        continue

    option_sequence += option

    if option == "q":
        print(ciphertext_mutable)
        break

    if option == "o":
        print("Entered option sequence:", option_sequence)

    if option == "n":
        i = (i + 3) % len(ciphertext)

    if option == "p":
        i = (i - 3) % len(ciphertext)

    a, b, c = ciphertext[i:i + 3]

    temp_start = ciphertext_mutable[:i]
    temp_body = ciphertext_mutable[i:i + 3]
    temp_end = (ciphertext_mutable[i + 3:] if i < len(ciphertext) - 3 else "")

    if option == "0":
        temp_body = a + b + c

    elif option == "1":
        temp_body = a + c + b

    elif option == "2":
        temp_body = b + a + c

    elif option == "3":
        temp_body = b + c + a

    elif option == "4":
        temp_body = c + a + b

    elif option == "5":
        temp_body = c + b + a

    ciphertext_mutable = (temp_start + temp_body + temp_end)
    print(temp_start + "\u001b[32m" + temp_body + "\u001b[0m" + temp_end)
