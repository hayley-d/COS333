def find_student_number(lines, required_count):
    matches = []

    for line in lines:
        line = line.strip()
        if not line:
            continue
        parts = line.split(", ")
        if len(parts) != 2:
            continue

        student_number = parts[0]
        names = parts[1].split()

        if len(names) < 2:
            continue

        first_names = names[:-1]
        last_name = names[-1]

        if len(first_names) == required_count:
            matches.append((last_name, student_number))

    if not matches:
        return "None found"
    elif len(matches) == 1:
        return matches[0][1]
    else:
        return min(matches)[1]

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 3:
        print("Usage python3 script.py input.txt 2")
        exit(1)

    filename = sys.argv[1]
    try:
        required_count = int(sys.argv[2])
        with open(filename) as file:
            result = find_student_number(file.readlines(), required_count)
            print(result)

    except Exception as e:
        print("Error: {e}")
        exit(1)

    
