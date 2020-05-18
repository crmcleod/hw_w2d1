class Student

    def initialize(name, cohort)
        @name = name
        @cohort = cohort
        # @favourite_language = favourite_language

    end

    def name
        return @name
    end

    def cohort
        return @cohort
    end

    def say_favourite_language(language)
        return "I love #{language}"
    end

    def student_say_something(say_something)
        return say_something
    end

    def set_name(name)
        @name = name
    end

    def set_cohort(cohort)
        @cohort = cohort
    end


end