% main body of the model

% simulation creation
num_doctors = 5;
days_in_month = 28; % must be 28 right now, four week period
shift_length = 8; % in hours, must divide 24
shifts_in_month = (days_in_month*24)/shift_length;
shifts_in_week = shifts_in_month/4;

%%% graph implementation

% set of time vertices. first dimension is time index (one shift), second is rank of
% each doctor (-1 if can't work), assign neutral 5 to everything initially
T = 5*ones(days_in_month*(24/shift_length),num_doctors);

% list of doctors, might not even use this
D = (1:num_doctors);

%%% doctor preferences
% prefered number of shifts per month (vector of length num_doctors)
pref_num_shifts = randi(shifts_in_month,num_doctors,1);

% doctors 1 and 2 can't work weekends
for i = 1:2
    for j = 1:shifts_in_month
        if (mod(j-1,shifts_in_week) == 0 || mod(j-2,shifts_in_week) == 0 || mod(j-3,shifts_in_week) == 0) % sunday
            T(j,i) = -1;
        end
        if (mod(j-19,shifts_in_week) == 0 || mod(j-20,shifts_in_week) == 0 || mod(j-21,shifts_in_week) == 0) % saturday
            T(j,i) = -1;
        end

    end
end

