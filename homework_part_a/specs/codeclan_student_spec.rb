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
end