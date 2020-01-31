classdef testTestAddNum < matlab.unittest.TestCase
% TESTTESTADDNUM.M This is a test stub for a unit testing
% The assertions that you can use in your test cases:
%
%    assertTrue
%    assertFalse
%    assertEqual
%    assertFilesEqual
%    assertElementsAlmostEqual
%    assertVectorsAlmostEqual
%    assertExceptionThrown
%
%   A more detailed explanation goes here.
%
%   This test checks for the following:
%   1. Class of inputs to be double
%   2. Class of Output entity
%   3. Length of Output entity
%   4. Value Assertion


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Please add your test cases below 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    methods (TestMethodSetup)
        function testSetup(testCase)

        end
    end
    
    methods (TestMethodTeardown)
        function testTearDown(testCase)

        end
    end

    methods (Test)
        function testClassInput(testCase)
            input1 = 2;
            input2 = 5;
            testCase.verifyClass(input1,'double');
            testCase.verifyClass(input2,'double');
            inputstr = struct;
            inputstr.a = input1;
            inputstr.b = input2;
            inputstr = jsonencode(inputstr);
            testCase.verifyClass(inputstr,'char');
        end
        
        function testRealSolution(testCase)
            % INSERT THE TEST CODE
            %actSolution = quadraticSolver(1,-3,2); % Expected to fail
            input1 = 2;
            input2 = 5;
            actSolution = input1 + input2;
            outstr = struct;
            outstr.sm = actSolution;
            actSolution = jsonencode(outstr);
            
            inputstr = struct;
            inputstr.a = input1;
            inputstr.b = input2;
            inputstr = jsonencode(inputstr);
            
            expSolution = addnum(inputstr);
            testCase.verifyClass(actSolution,'char');
            testCase.verifyEqual(actSolution,expSolution);
            
        end
    end
    
end

