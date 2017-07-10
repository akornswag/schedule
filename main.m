% Main algorithm. Requires text files



% the input file should have the following format:
% name_ID day t_start t_end rank
type input.txt
% where rank an integer in [-10, 10]

% the time file should have the following format:
% day t_start t_end
type time.txt
% specifying all times that need to be filled

num_inputs = 2; % number of lines in input text file

fileID = fopen('input.txt');
input_array = fscanf(fileID, '%d', [5 num_inputs]);

input_array