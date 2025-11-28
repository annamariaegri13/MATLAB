function grafice_ftj(R,C,F,min,max)

fig=figure('Name','FTJ',...
            'Units','normalized',...
            'Position',[0.1 0.1 0.8 0.8],...
             'color', 'w',...
            'NumberTitle','off','color','w');
set(gcf, 'Color','#4DBEEE');

w0=1/(R*C);
f0=1/(2*pi*R*C);
w = logspace(min,max,100);           %val omega
f = w./(2*pi);                       %val frecv
sus = w0;
jos = w0 + 1j*w;
H = abs(sus./jos);                   %fct de transfer
gain = 20*log10(H);                  %calcul crestere
phase = 180/pi*(angle(sus./jos));    %calcul faza

subplot('Position',[0.25 0.55 0.70 0.35]);
semilogx(f, gain,'r','LineWidth',1.5);
grid on;
title('Caracteristica de frecventa la scara dublu logaritmica','fontname','Arial');
xlabel('Frecventa [Hz]','fontweight', 'bold', 'fontname', 'Arial','color','#A2142F','fontsize',10);
ylabel('Castigul [dB] ','fontweight', 'bold', 'fontname', 'Arial','color','#A2142F','fontsize',12);
subplot('Position',[0.49 0.1 0.5 0.23]);
semilogx(f,phase, 'c','LineWidth',1.5);
grid on;
title('Caracteristica de faza la scara semilogaritmica','fontname','Arial');
xlabel('Frecventa [Hz]','fontweight', 'bold', 'fontname', 'Arial','color','#A2142F','fontsize',10);
ylabel('Faza [°C]','fontweight', 'bold', 'fontname', 'Arial','color','#A2142F','fontsize',12);