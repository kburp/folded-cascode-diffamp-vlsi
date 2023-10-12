close all

% VTC
vtc_data = csvread("fc_diffamp_vtc.csv");

figure
plot(vtc_data(2:1802,1), [vtc_data(2:1802,3), vtc_data(1803:3603, 3), ...
  vtc_data(3604:5404, 3), vtc_data(5405:7205, 3), vtc_data(7206:9006, 3)], ...
  "-", "LineWidth", 2)

vtc_line_params = polyfit(vtc_data(752:753, 1), vtc_data(752:753, 3), 1);

hold on
vtc_fit_x = [0.725, 0.775];
plot(vtc_fit_x, vtc_fit_x.*vtc_line_params(1) + vtc_line_params(2), "k--", "LineWidth", 2)
hold off

ylim([0 1.8])
xlabel("Vin (V)")
ylabel("Vout (V)")
title("Folded Cascode Differential Amplifier VTC")
legend({"Vref=0.75V", "Vref=1.00V", "Vref=1.25V", "Vref=1.50V", ...
"Vref=1.75V", "Gain Fit"}, "Location", "northwest")

fprintf("DC gain: %f\n", vtc_line_params(1))

% IV characteristic
iv_data = csvread("fc_diffamp_iv.csv");

figure
plot(iv_data(2:end, 1), iv_data(2:end, 2), "LineWidth", 2)

iv_line_params = polyfit(iv_data(930:1070, 1), iv_data(930:1070, 2), 1);

hold on
iv_fit_x = [0.7 1.3];
plot(iv_fit_x, iv_fit_x.*iv_line_params(1) + iv_line_params(2), "k--", "LineWidth", 2);
hold off

ylim([-1e-6 1.1e-6])
xlabel("Vin (V)")
ylabel("Iout (A)")
title("Folded Cascode Differential Amplifier IV Characteristic")
legend({"IV Curve", "Gm Fit"}, "Location", "northwest")

fprintf("Incremental transconductance gain: %e\n", iv_line_params(1))
fprintf("Limiting output currents: %e, %e\n", min(iv_data(:,2)), max(iv_data(:,2)))

% Loopgain
lg_data = csvread("fc_diffamp_lg.csv");

figure
semilogx(lg_data(2:end, 1), [lg_data(2:end, 2), lg_data(2:end, 3)], "LineWidth", 2)
grid on

ylim([-340 80])
yticks([-300:40:-60, -20:20:60])
xlabel("Frequency (Hz)")
ylabel("Magnitude (dB) / Phase (deg)")
title("Folded Cascode Differential Amplifier Loopgain")
legend({"Magnitude", "Phase"}, "Location", "southwest")

ugcf = lg_data(find(abs(lg_data(2:end, 2)) == min(abs(lg_data(2:end, 2)))) + 1, 1);

fprintf("Low-frequency gain: %f\n", 10^(lg_data(2, 2)/20))
fprintf("Unity-gain crossover frequency %e\n", ugcf)

% AC analysis
ac_data = csvread("fc_diffamp_ac.csv");

figure
semilogx(ac_data(2:end, 1), [ac_data(2:end, 2), ac_data(2:end, 3)], "LineWidth", 2)
grid on

yticks([-400:40:0])
xlabel("Frequency (Hz)")
ylabel("Magnitude (dB) / Phase (deg)")
title("Folded Cascode Differential Amplifier Unity-Gain Follower Frequency Response")
legend({"Magnitude", "Phase"}, "Location", "southwest")

corner_freq = ac_data(find(abs(ac_data(2:end, 2) + 3) == ...
  min(abs(ac_data(2:end, 2) + 3))) + 1, 1);

fprintf("Corner frequency: %e\n", corner_freq)





