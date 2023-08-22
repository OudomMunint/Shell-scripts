#!/usr/bin/env python
import random
import string

def generate_password(length=12):
    # Define characters
    characters = string.ascii_letters + string.digits + string.punctuation

    # Generate random password (Python 3.6+)
    password = ''.join(random.choices(characters, k=length))

    return password
    
if __name__ == "__main__":
    password_length = int(input("Enter the desired password length: "))
    generated_password = generate_password(password_length)
    print("Generated Password:", generated_password)
