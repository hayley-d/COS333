import sys

def main():
    # Check for exactly 2 command line args
    if len(sys.argv) != 3:
        print("Usage: puthon3 script.py input.txt 2")
        return
    
    filename = sys.argv[1]

    # Try converting the second arg to an int
    try:
        required_name_count = int(sys.argv[2])
    except ValueError:
        print("Second argument must be an integer")
        return

    matches = []

    # Open and read the input file
    try:
        with open(filename, 'r') as file:
            for line in file:
                line = line.strip()
                # Skip empty lines
                if not line:
                    continue
                parts = line.split(", ")
                if len(parts) != 2:
                    continue
                
                student_number = parts[0]
                # split name into names
                names = parts[1].split()
                
                # Names must have at least a first and last name
                if len(names) < 2:
                    continue
                
                # All names except last
                first_names = names[:-1]
                last_name = names[-1]

                # If the count matches required then store
                if len(first_names) == required_name_count:
                    matches.append((last_name, student_number))

            # Output based on matches
            if not matches:
                print("None found")
            elif len(matches) == 1:
                # Only one match
                print(matches[0][1])
            else:
                # Alphabetical first last name
                print(min(matches)[1])

    except FileNotFoundError:
        print("File not found:", filename)

if __name__ == "__main__":
    main()

