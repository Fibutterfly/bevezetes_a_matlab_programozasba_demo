classdef testKozep < matlab.unittest.TestCase

    methods (TestClassSetup)
        % Shared setup for the entire test class
    end

    methods (TestMethodSetup)
        % Setup for each test
    end

    methods (Test)
        % Test methods

        function parosinput(testCase)
            n = 4;
            m = 3;
            expectedOutput =  [ -1 -1 -1 -1; -1 -1 -1 -1; 
                                -1 -1 -1 -1; -1 -1 -1 -1;];
            actualOutput = kozep(n,3);
            testCase.verifyEqual(actualOutput, expectedOutput);
        end
        function test73(testCase)
            n = 7;
            m = 3;
            expectedOutput =  zeros(n);
            helper1 = ones(m,m);
            expectedOutput(3:5,3:5) = helper1;
            actualOutput = kozep(n,m);
            testCase.verifyEqual(actualOutput, expectedOutput);
        end
    end

end