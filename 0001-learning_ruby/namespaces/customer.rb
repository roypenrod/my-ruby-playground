module WebWorks
    module CustomerTrackingSystem

        class Customer
            def initialize(name)
                @name = name
            end

            def setName(name)
                @name = name
            end

            def getName
                @name
            end
        end

    end
end
