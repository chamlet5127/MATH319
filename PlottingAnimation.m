clear all
close all
clc
% This is a script to illustrate how to animate a signal

% This can also be saved to a file to create movie of your signal. I'll
% show you how to do that later. 

% Set up defaults for plotting (optional)
set(0,'DefaultAxesLineStyleOrder','-|-.|--|:','DefaultLineLineWidth',2)
set(0,'DefaultLineMarkerSize',20) % Change this to change the size of the marker
set(0,'DefaultTextFontSize',24)
set(0,'DefaultAxesFontSize',24)
% get the screen size for plotting
screen_size = get(0, 'ScreenSize');

% Set some oscillators
nosc = 30
% Time informations
dt = 0.01;
t = 0:dt:4;
% Frequency
omega = 1;

%Initialize oscillators
theta = zeros(nosc,length(t));

% Fill in with some values for an example
for j = 1:length(t)
    
    for i = 1:nosc
        
        theta(i,j)= -omega*t(j) + 0.1*(i-1);
        
    end
    
end

for j = 1:length(t)
    
for i = 1:nosc
    
    % As an example, I just made the threshold for changing 0
    if sin(2*pi*theta(i,j)) < 0
        
        % If the number is negative plot a red circle
        plot(i,0,'ro','MarkerFaceColor','r')
        
    else
        
        % If the number is signal plot a black circle
        plot(i,0,'ko','MarkerFaceColor','k')
    end
    
    % Keep the oscillators all on the plot for the single time step by
    % using hold on
    hold on
    % Set the axis to the appropriate x-axis to avoid autoadjust
    axis([0 nosc+1 -1 1])
    
    
end
% Add in a small pause so you actually see the signal changing. You can
% increase or descrease this value to make it go faster or slower
pause(0.01)

% Turn hold off so that the first plot in the next inner loop with clear
% the previous figure and start a fresh plot. You could also use clf. 
hold off

end