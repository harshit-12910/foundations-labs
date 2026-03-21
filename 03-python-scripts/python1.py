#!/usr/bin/env python

import sys
import os

if len(sys.argv) < 3:
	print("Error: provide a folder and a word")
	print(f"Usage: python {sys.argv[0]} <directory> <search_word>")
	sys.exit(1)

folder = sys.argv[1]
word = sys.argv[2]

if not os.path.isdir(folder):
	print("The folder doesn't exist, Try again!")
	sys.exit(1)

first_match = True

content = os.listdir(folder)

for file in content:
	fullpath = os.path.join(folder, file)
	if os.path.isfile(fullpath) and file.endswith(".txt"):
		with open(fullpath, 'r') as f:
			printed = False
			for line_num, line in enumerate(f, start=1):
				if word.lower() in line.lower():
					if not printed:
						if not first_match:
							print()
						print(f"{file}:")
						printed = True
						first_match = False
					print(f"[{line_num}] {line}", end="")
