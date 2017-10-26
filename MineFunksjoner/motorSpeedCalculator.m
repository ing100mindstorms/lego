function [Speed] = motorSpeedCalculator(angle, timestep, radius)

%Motor Speed Calculation
%motorSpeedCalculator(angle, timestep, radius) use the following values in
%order to calculate velocity:
% - angle (contains two values, the previous value angle(1) and the present
%          value angle(2), in radians)
% - timestep (the time taken from angle(1) to angle(2))
% - radius (the radius of the wheel)

    distanceTraveled = (angle(2) - angle(1))*radius;
    Speed = distanceTraveled / timestep;
end