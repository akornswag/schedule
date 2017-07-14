% Main algorithm. Requires text files



% the input file should have the following format:
% name_ID day t_start t_end rank
% type input.txt
% where rank an integer in [-10, 10]

num_inputs = 2; % number of lines in input text file

fileID = fopen('input.txt');
input_array = fscanf(fileID, '%d', [5 num_inputs]);

% each column is an availability/preference
input_array

% the time file should have the following format:
% day t_start t_end
% type time.txt
% specifying all times that need to be filled

fileID = fopen('time.txt');
input_time = fscanf(fileID, '%d', [3 5]);

%each column is a time slot needing to be filled
input_time


%%%%%%%%%%%%%%%% GRAPH IMPLEMENTATION %%%%%%%%%%%%%%%%


