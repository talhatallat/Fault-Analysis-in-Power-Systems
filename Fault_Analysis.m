
%Inputs are in order Z1, Z2, Z0 where XG1(1) is the positive sequence
%reactance of G1
XG1 = [0.11 0.11 0.07];
XT1 = [0.08 0.08 0.08];
XL = [0.07 0.07 0.12];


%  Voltage inputs 
VG1 = 9;
VT1 = 9/26;
VL = 26;
P = 20e6; % VA


% 2. Network Impedence Matrix 
Z1 = XG1(1) + XT1(1) + XL(1);
Z2 = XG1(2) + XT1(2) + XL(2);


% 3. Fault Current (p.u.)
E = 1; % 1 p.u. angle 0
I = sqrt(3)*E/(Z1+Z2);


% 4. Fault Current (KA)
%Calculating the fault current at the fault point in KA
IF = -i*((I)*(P./(sqrt(3)*(VL*10^3)))); % IF * Ibase


% 5. Generator Current (KA)
% Finding the fault flowing from the generator in KA
IG = -i*((I)*(P./(sqrt(3)*(VG1*10^3)))); % IF * Ibase


% Displaying outputs

disp('________________________________________')
disp('       Networking impedence Matrix      ')
disp('________________________________________')
disp(Z1)
disp(Z2); 


disp('________________________________________')
disp('              Fault Current (p.u.)            ')
disp('________________________________________')
disp(I)
disp('  ')

disp('________________________________________')
disp('              Fault Current (KA)            ')
disp('________________________________________')
disp(IF)
disp('  ')

disp('________________________________________')
disp('            Generator Current (KA)           ')
disp('________________________________________')
disp(IG)
