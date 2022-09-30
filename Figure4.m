Tfdg = reshape(readmatrix('Fig4_Tfdg.csv'),[38 4 11]);
Tho = reshape(readmatrix('Fig4_Tho.csv'),[38 4 11]);
Tom = reshape(readmatrix('Fig4_Tom.csv'),[38 4 11]);
Tgi = reshape(readmatrix('Fig4_Tgi.csv'),[38 4 11]);
thresh = 0.05:0.025:0.3;

h = figure('Renderer','painters','Position',[0 0 1400 700])
subplot(2,4,1)
errorbar(thresh,squeeze(mean(Tfdg(1:20,2,:))),squeeze(std(Tfdg(1:20,2,:))),'k','linewidth',2)
hold on
errorbar(thresh,squeeze(mean(Tfdg(1:20,3,:))),squeeze(std(Tfdg(1:20,3,:))),'b','linewidth',2)
axis([0.03 0.32 0 .9])
title('CMRGlc','fontname','arial','fontsize',16)
ylabel('HC-Y','fontname','arial','fontsize',16)
subplot(2,4,2)
errorbar(thresh,squeeze(mean(Tho(1:20,2,:))),squeeze(std(Tho(1:20,2,:))),'k','linewidth',2)
hold on
errorbar(thresh,squeeze(mean(Tho(1:20,3,:))),squeeze(std(Tho(1:20,3,:))),'b','linewidth',2)
axis([0.03 0.32 0 .9])
title('CBF','fontname','arial','fontsize',16)
subplot(2,4,3)
errorbar(thresh,squeeze(mean(Tom(1:20,2,:))),squeeze(std(Tom(1:20,2,:))),'k','linewidth',2)
hold on
errorbar(thresh,squeeze(mean(Tom(1:20,3,:))),squeeze(std(Tom(1:20,3,:))),'b','linewidth',2)
axis([0.03 0.32 0 .9])
title('CMRO_2','fontname','arial','fontsize',16)
subplot(2,4,4)
errorbar(thresh,squeeze(mean(Tgi(1:20,2,:))),squeeze(std(Tgi(1:20,2,:))),'k','linewidth',2)
hold on
errorbar(thresh,squeeze(mean(Tgi(1:20,3,:))),squeeze(std(Tgi(1:20,3,:))),'b','linewidth',2)
axis([0.03 0.32 -.25 .25])
title('GI','fontname','arial','fontsize',16)
legend({'WM_v','WM_n'},'location','south','numcolumns',3,'fontname','arial','fontsize',14)

subplot(2,4,5)
errorbar(thresh,squeeze(mean(Tfdg(21:38,2,:))),squeeze(std(Tfdg(21:38,2,:))),'k','linewidth',2)
hold on
errorbar(thresh,squeeze(mean(Tfdg(21:38,3,:))),squeeze(std(Tfdg(21:38,3,:))),'b','linewidth',2)
axis([0.03 0.32 0 .9])
ylabel('HC-O','fontname','arial','fontsize',16)
xlabel('Population Lesion % Threshold','fontname','arial','fontsize',14)
subplot(2,4,6)
errorbar(thresh,squeeze(mean(Tho(21:38,2,:))),squeeze(std(Tho(21:38,2,:))),'k','linewidth',2)
hold on
errorbar(thresh,squeeze(mean(Tho(21:38,3,:))),squeeze(std(Tho(21:38,3,:))),'b','linewidth',2)
axis([0.03 0.32 0 .9])
subplot(2,4,7)
errorbar(thresh,squeeze(mean(Tom(21:38,2,:))),squeeze(std(Tom(21:38,2,:))),'k','linewidth',2)
hold on
errorbar(thresh,squeeze(mean(Tom(21:38,3,:))),squeeze(std(Tom(21:38,3,:))),'b','linewidth',2)
axis([0.03 0.32 0 .9])
subplot(2,4,8)
errorbar(thresh,squeeze(mean(Tgi(21:38,2,:))),squeeze(std(Tgi(21:38,2,:))),'k','linewidth',2)
hold on
errorbar(thresh,squeeze(mean(Tgi(21:38,3,:))),squeeze(std(Tgi(21:38,3,:))),'b','linewidth',2)
axis([0.03 0.32 -.25 .25])