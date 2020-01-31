function outstr = addnum(inputstr)
%ADDNUM Recieves JSON string with two numbers and Returns sum as JSON string

% JSON received to MATLAB struct
%inputstr = jsondecode(inputstr);

% struct with two numbers a and b
a = inputstr.a;
b = inputstr.b;

% sum 
sm = a+b;

% assigning result to a struct
outstr = struct;
outstr.sm = sm;

% struct converted to json string for output
outstr = jsonencode(outstr); 
end

