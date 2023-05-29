classdef test_replace < matlab.unittest.TestCase
    
    methods(TestClassSetup)
        % Shared setup for the entire test class
    end
    
    methods(TestMethodSetup)
        % Setup for each test
    end
    
    methods(Test)
        % Test methods
        
        function replace_test(testCase)
            should = cell(6,2);
            should{1,1} = 132;
            should{2,1} = 'aQd';
            should{6,2} = 'a';
            replace_xls('Book1.xlsx','s','Q');
            res = readcell("replaced.xls");
            verifyEqual(testCase, res{1,1}, should{1,1});
            verifyEqual(testCase, res{2,1}, should{2,1});
            verifyEqual(testCase, res{6,2}, should{6,2});
        end
    end
    
end