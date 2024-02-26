figure; contour(gBA',10,'r-.','LineWidth',3); hold on;
contour((g_01+gBA_calc)',10,'b*','LineWidth',2);
title('Perbandingan gBA obs dan gBA calc', 'FontSize', 20);
visualFormat;
legend('gBA obs','gBA calc','location','southeast');

figure; plot(galat(:,1),'LineWidth',2); title('RMS error', 'FontSize', 20);
set(gca, 'FontSize', 16);
xlabel('iteration');
ylabel('RMS Value');

figure; h = surf(gBA'); set(h, 'EdgeColor', 'none'); hold on; mesh(gReg_calc');
title('Comparative Visualization between gBA and gReg calc', 'FontSize', 20);
visualFormat;
zlabel('mGal', 'FontSize', 18);
legend('gBA','gReg calc','location','northeast');

figure; h = surf(gBA_misfit'); set(h, 'EdgeColor', 'none'); 
view(0,90); 
visualFormat;
zlabel('mGal', 'FontSize', 18);
title('gBA misfit (mGal)');
hcb = colorbar('location','southoutside'); axis([1 baris 1 kolom]);
% Set font size of colorbar numbers
set(hcb, 'fontSize', 14, 'fontweight', 'bold');

%%% TVReg    
figure;    
subplot(2,1,1); 
plot(xx, gBA(:,ypos),'b-.','LineWidth',3); hold on; 
plot(xx, (gBA_calc(:,ypos) + g_01(:,ypos)),'r-','LineWidth',3);
legend('gBA Obs','gBA Calc','location','southeast');
judul = ['Inversion Result of the MDR, TSA, TVReg at Position of y = ' num2str(yy(ypos)) ' m'];
title(judul,'FontSize', 20); ylabel('mGal', 'FontSize', 18);
axis tight;
set(gca, 'FontSize', 16);

subplot(2,1,2); 
plot(xx, topo(:,ypos),'b-.','LineWidth',3); hold on;
plot(xx, (int01(:,ypos)),'r--','LineWidth',3);     
plot(xx, (int01(:,ypos)-depth_inv(:,ypos)),'k-','LineWidth',3);
legend('Topo','Intf01','Intf02','location','southeast');
ylabel('Depth (km)', 'FontSize', 18);
xlabel('Station (m) at X Direction', 'FontSize', 18);
axis tight;
set(gca, 'FontSize', 16);

%%
figure;    
subplot(2,1,1); 
plot(yy, gBA(xpos,:),'b-.','LineWidth',3); hold on; 
plot(yy, (gBA_calc(xpos,:) + g_01(xpos,:)),'r-','LineWidth',3);
legend('gBA Obs','gBA Calc','location','southeast');
judul = ['Inversion Result of the MDR, TSA, TVReg at Position of x = ' num2str(xx(xpos)) ' m'];
title(judul,'FontSize', 20); ylabel('mGal', 'FontSize', 18);
axis tight;
set(gca, 'FontSize', 16);

subplot(2,1,2); 
plot(yy, topo(xpos,:),'b-.','LineWidth',3); hold on;
plot(yy, (int01(xpos,:)),'r--','LineWidth',3);     
plot(yy, (int01(xpos,:)-depth_inv(xpos,:)),'k-','LineWidth',3);
legend('Topo','Intf01','Intf02','location','southeast');
ylabel('depth (km)', 'FontSize', 18);
xlabel('Station (m) at Y Direction', 'FontSize', 18);
axis tight;
set(gca, 'FontSize', 16);