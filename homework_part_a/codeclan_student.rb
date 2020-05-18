class Student

    def initialize(name, cohort, favourite_language)
        @name = name
        @cohort = cohort
        @favourite_language = favourite_language

    end

    def name
        return @name
    end

    def cohort
        return @cohort
    end

    def say_favourite_language
        return "I love #{@favourite_language}"
    end

    def say_something
        return "Can you hear me? Am I muted?"
    end

    def set_name(name)
        @name = name
    end

    def set_cohort(cohort)
        @cohort = cohort
    end


end