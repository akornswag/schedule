% main body of the model

% simulation creation
num_doctors = 5;
days_in_month = 31;
shift_length = 8; % in hours, must divide 24

% doctor preferences









%%%%%%%%%%%%%%%%%%%%%%% graph implementation

% set of time vetices. first dimension is time index, second is rank of
% each doctor
T = zeros(days_in_month*(24/shift_length),num_doctors);

% set of doctors
D = (1:num_doctors);
