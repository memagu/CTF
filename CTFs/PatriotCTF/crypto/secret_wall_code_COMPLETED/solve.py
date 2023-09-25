import json

with open("words_dictionary.json", 'r') as f:
    words = json.load(f)

# abca_de_fgXhhi_dbecbX

words_1 = [word for word in words if len(word) == 4 and len(set(word)) == 3 and word[0] == word[-1]]
words_2 = [word for word in words if len(word) == 2]
words_3 = [word for word in words if len(word) == 6 and len(set(word)) == 5 and word[2] == 'e' and word[3] == word[4]]
words_4 = [word for word in words if len(word) == 6 and len(set(word)) == 5 and word[-1] == 'e' and word[1] == word[4]]

# words_1 = ["abca"]
# words_2 = ["de"]
# words_3 = ["fgXhhi"]
# words_4 = ["dbecbX"]

for word_1 in words_1:
    for word_2 in words_2:
        if any(letter in word_1 for letter in word_2):
            continue
        for word_3 in words_3:
            if any(letter in word_1 + word_2 for letter in word_3):
                continue
            for word_4 in words_4:
                if word_4[0] == word_2[0] and word_4[1] == word_1[1] and word_4[2] == word_2[1] and word_4[3] == word_1[2]:
                    print(f"PCTF{{{word_1}_{word_2}_{word_3}_{word_4}}}")