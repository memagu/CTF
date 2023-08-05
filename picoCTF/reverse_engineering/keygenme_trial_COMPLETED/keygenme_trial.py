import hashlib

bUsername_trial = b"PRITCHARD"

key_part_static1_trial = "picoCTF{1n_7h3_|<3y_of_"
key_part_dynamic1_trial = str(hashlib.sha256(bUsername_trial).hexdigest()[4]) + \
                          str(hashlib.sha256(bUsername_trial).hexdigest()[5]) + \
                          str(hashlib.sha256(bUsername_trial).hexdigest()[3]) + \
                          str(hashlib.sha256(bUsername_trial).hexdigest()[6]) + \
                          str(hashlib.sha256(bUsername_trial).hexdigest()[2]) + \
                          str(hashlib.sha256(bUsername_trial).hexdigest()[7]) + \
                          str(hashlib.sha256(bUsername_trial).hexdigest()[1]) + \
                          str(hashlib.sha256(bUsername_trial).hexdigest()[8])
key_part_static2_trial = "}"
key_full_template_trial = key_part_static1_trial + key_part_dynamic1_trial + key_part_static2_trial
print(key_full_template_trial)