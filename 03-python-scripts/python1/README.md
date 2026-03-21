# Text File Search Script (Python)

This is a simple Python script that searches for a specific word inside all `.txt` files within a given directory.

## Features

- Searches all `.txt` files in a directory
- Case-insensitive search
- Displays matching lines with line numbers
- Groups results by file for better readability

## Usage

Run the script with:

```bash
python script.py <directory> <search_word>

## Eample
python script.py logs error

## Output Example
file1.txt:
[3] Error: something went wrong
[10] Another error occurred

file2.txt:
[5] error connecting to database
