classdef testSakktabla < matlab.unittest.TestCase

    methods (TestClassSetup)
        % Shared setup for the entire test class
    end

    methods (TestMethodSetup)
        % Setup for each test
    end

    methods (Test)
        % Test methods
        function testSakktablaN3(testCase)
            % Test the sakktabla function with n=3
            expectedOutput = logical([1 0 1; 0 1 0; 1 0 1]);
            actualOutput = sakktabla(3);
            verifyEqual(testCase, actualOutput, expectedOutput);
        end
    end

end