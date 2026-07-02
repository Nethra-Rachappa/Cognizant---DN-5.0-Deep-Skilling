import java.util.*;

interface Observer {
    void update(String message);
}

class Student implements Observer {

    String name;

    Student(String name) {
        this.name = name;
    }

    public void update(String message) {
        System.out.println(name + " received: " + message);
    }
}

class Teacher {

    List<Observer> students = new ArrayList<>();

    void addStudent(Observer o) {
        students.add(o);
    }

    void notifyStudents(String msg) {
        for (Observer s : students) {
            s.update(msg);
        }
    }
}

public class ObserverPattern {

    public static void main(String[] args) {

        Teacher teacher = new Teacher();

        teacher.addStudent(new Student("Nethra"));
        teacher.addStudent(new Student("Anu"));

        teacher.notifyStudents("Class starts at 10 AM");
    }
}