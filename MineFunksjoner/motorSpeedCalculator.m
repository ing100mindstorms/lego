function [Speed] = motorSpeedCalculator(angle, timestep, radius)
    distanceTraveled = (angle(2) - angle(1))*radius;
    Speed = distanceTraveled / timestep;
end