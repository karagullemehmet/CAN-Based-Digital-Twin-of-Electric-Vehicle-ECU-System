%% === EV ECU – Speed Tracking Plot ===
% Plot both Vehicle Speed and Reference Speed (from SimulationOutput 'out')
clear; clc; close all;
% --- Get simulation output structure ---
out = sim('ECU_Durum_Makinesi');   % replace with your model name
if evalin('base','exist(''out'',''var'')')
    out = evalin('base','out');
else
    error('Simulation output variable ''out'' not found in workspace. Run the simulation first.');
end

% --- Extract signals from the Simulink.SimulationOutput object ---
try
    Vehicle_Speed = out.Vehicle_Speed;

catch
    error('Vehicle_Speed or Speed_ref not found inside the simulation output (out).');
end

% --- Extract time and data vectors ---
tV = Vehicle_Speed.Time;
v  = Vehicle_Speed.Data;

% --- Plot ---
figure('Color','w');
hold on;
grid on; box on;

% Vehicle speed (blue solid)
plot(tV, v, 'b', 'LineWidth', 1.8);

xlabel('Time (s)', 'FontSize', 11);
ylabel('Speed (km/h)', 'FontSize', 11);
title('Vehicle Speed Tracking – EV ECU Digital Twin', ...
    'FontWeight', 'bold', 'FontSize', 12);

legend('Vehicle Speed', 'Location', 'best');
ylim([0 100]);
