%Hammad Imam // himam@iastate.edu
%Password Strength Indicator
%AerE 161, Iowa State University

clear, clc; %clear the console and all variables

pw = input('Enter password: ', 's'); %request password from user

ps = 0; %initiate pw strength to 0
pws = strcat("The password '", pw, "' is "); %initial return string

if ~(isempty(regexp(pw,'[a-zA-Z]')))    %if there are letters
    ps = ps+1;                          %increase strength by 1
end
if ~(isempty(regexp(pw,'[0-9]')))       %if there are numbers
    ps = ps+1;                          %increase strength by 1
end
if length(pw) >= 8                      %if it's longer than 8 characters
    ps = ps+2;                          %increase strength by 2
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
elseif(ps == 4)
    pws = strcat(pws, 'very strong.');
else
    pws = strcat(pws, 'very very strong.');
end

disp(pws);