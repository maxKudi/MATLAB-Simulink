%% Load Data
Data = xlsread('Battery_Parameters');

%% Name the data
SOC = Data(:,1);
OCV = Data(:,2);
R_Charge = Data(:,3);
R_Discharge = Data(:,4);

%% Plot 
plot(SOC,OCV)
figure
plot(SOC, R_Charge)
figure
plot(SOC, R_Discharge)

%% Define Parameters
I = 2.3;
Cn = 2.3 * 3600; %Capacity
Sim_Time = 3600;

%% Simulate Block
sim('Battery_Model')