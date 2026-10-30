class Person {
  String name;
  String address;

  Person(this.name, this.address);

  @override
  String toString() {
    return 'Name: $name, Address: $address';
  }
}
class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];
  Student(super.name, super.address);
  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }
  void printGrades() {
    for (int i = 0; i < numCourses; i++) {
      print('Course: ${courses[i]}, Grade: ${grades[i]}');
    }
  }
  double getAverageGrade() {
    if (numCourses == 0) {
      return 0.0;
    }
    int total = 0;
    for (int grade in grades) {
      total += grade;
    }
    return total / numCourses;
  }
  @override
  String toString() {
    return 'Student: Name: $name, Address: $address, Courses: $courses, Grades: $grades';
  }
}
class Teacher extends Person {
  int numCourses = 0;
  List<String> courses = [];
  Teacher(super.name, super.address);
  bool addCourse(String course) {
    if (!courses.contains(course)) {
      courses.add(course);
      numCourses++;
      return true;
    }
    return false;
  }
  bool removeCourse(String course) {
    if (courses.contains(course)) {
      courses.remove(course);
      numCourses--;
      return true;
    }
    return false;
  }
  @override
  String toString() {
    return 'Teacher: Name: $name, Address: $address, Courses: $courses';
  }
}
void main() {
  Student student = Student('Ahmed', 'Damanhour, Egypt');
  student.addCourseGrade('Math', 90);
  student.addCourseGrade('Science', 85);
  print(student.toString());
  student.printGrades();
  print('Average Grade: ${student.getAverageGrade()}');

  Teacher teacher = Teacher('Mohamed', 'Alexanderia, Egypt');
  teacher.addCourse('Math');
  teacher.addCourse('Science');
  print('Courses : ${teacher.courses}');
  teacher.removeCourse('Math');
  print(teacher.removeCourse('History'));
  print(teacher.toString());
  print('Courses : ${teacher.courses}');
}