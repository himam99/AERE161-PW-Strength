%Hammad Imam // himam@iastate.edu
%Password Strength Indicator
%AerE 161, Iowa State University

clear, clc; %clear the console and all variables

%request password from user
pw = input('Enter password: ', 's'); 

%initiate pw strength to 0
ps = 0;

%initial return string, containing all but results
pws = strcat("The password '", pw, "' is ");


if ~(isempty(regexp(pw,'[a-z]'))) %if there are letters
    ps = ps+1;                    %increase strength by 1
end
if ~(isempty(regexp(pw,'[0-9]'))) %if there are numbers
    ps = ps+1;                    %increase strength by 1
end
if length(ps) >= 8                %if it's longer than 8 characters
    ps = ps+2;                    %increase strength by 2
end

%append strength level to pws
if(ps <= 0)
    pws = strcat(pws, 'extremely weak.');
elseif(ps == 1)
    pws = strcat(pws, 'very weak.');
elseif(ps == 2)
    pws = strcat(pws, 'weak.');
elseif(ps == 3)
    pws = strcat(pws, 'strong.');
elseif(ps == 3)
    pws = strcat(pws, 'very strong.');
else
    pws = strcat(pws, ' very very strong.');
end

disp(pws);

