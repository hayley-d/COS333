import unittest
from script import find_student_number

class TestFindStudentNumber(unittest.TestCase):
    def test_none_found(self):
        data = [
            "1234567, Alice Jane Brown",
            "7654321, Bob Joe Smith"
        ]
        self.assertEqual(find_student_number(data, 3), "None found")

    def test_one_match(self):
        data = [
            "1000001, Mike Tyson",
            "1000002, Sarah Jane Connors"
        ]
        self.assertEqual(find_student_number(data, 1), "1000001")

    def test_multiple_match_sorting(self):
        data = [
            "2000001, Alice Mary Zebra",
            "2000002, Charlie Joe Anderson",
            "2000003, Ben Thomas Zachary"
        ]
        self.assertEqual(find_student_number(data, 2), "2000002")

    def test_empty_file(self):
        self.assertEqual(find_student_number([], 1), "None found")

    def test_extra_spaces(self):
        data = [
            "3000001,    Emily     Rose   Watson",
            "3000002,     John   Doe"
        ]
        self.assertEqual(find_student_number(data, 1), "3000002")

if __name__ == "__main__":
    unittest.main()

