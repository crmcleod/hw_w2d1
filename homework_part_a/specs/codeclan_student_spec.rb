require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test
    def  test_student_name
        student = Student.new("Craig", "E40")
        assert_equal("Craig", student.name())
    end

    def test_student_cohort
        student = Student.new("Zorlock", "E123")
        assert_equal("E123", student.cohort())
    end

    def test_can_update_student_name
        student = Student.new("Zorlock", "E123")
        student.set_name("Farnsworth")
        assert_equal("Farnsworth", student.name())
    end

    def test_can_update_student_cohort
        student = Student.new("Farnsworth", "E123")
        student.set_cohort("G316")
        assert_equal("G316", student.cohort())
    end

    def test_student_can_say_something
        student = Student.new("Craig", "E40")
        assert_equal("Can you hear me? Am I muted?", student.student_say_something("Can you hear me? Am I muted?"))
    end

    def test_say_favourite_language
        student = Student.new("Craig", "E40")
        assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
    end
end