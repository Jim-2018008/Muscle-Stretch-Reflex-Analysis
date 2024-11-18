%% Method-01
f=@(fa,fe,L)1-(fe.^5)/((0.5^5)+fe.^5)-L;
g=@(fa,fe,L)L.*0.6*exp(0.5*L)-fa;
h=@(fa,fe,L)fa-fe;
range=[0 1 0 1 0 1];
fimplicit3(g,range);
hold on;
fimplicit3(f,range);
hold on;
fimplicit3(h,range);

%% Method-02
fe1=0:0.02:1;
L1=1-(fe1.^5)./((0.5^5)+fe1.^5);
L2=0:0.02:1;
fe2=L2*0.6.*exp(0.5*L2);
plot(fe1,L1);
hold on;
plot(fe2,L2);

%% Method-04
% Define the system of equations as an anonymous function
system_of_eqns = @(x) [
    1 - (x(2)^5) / ((0.5^5) + x(2)^5) - x(3);            % f(fa, fe, L) = 0
    x(3) * 0.6 * exp(0.5 * x(3)) - x(1);                 % g(fa, fe, L) = 0
    x(1) - x(2)                                          % h(fa, fe, L) = 0
];

% Provide an initial guess for [fa, fe, L]
initial_guess = [0.5, 0.5, 0.5];

% Solve the system of equations
solution = fsolve(system_of_eqns, initial_guess);

% Extract the values of fa, fe, and L
fa_solution = solution(1);
fe_solution = solution(2);
L_solution = solution(3);

% Display the solution
fprintf('Solution:\nfa = %.4f\nfe = %.4f\nL = %.4f\n', fa_solution, fe_solution, L_solution);