svd_estimates = reshape(readmatrix('Fig3_svd_estimates.csv'),[22 301 9]);
svd_estimates_csf = reshape(readmatrix('Fig3_svd_estimates_csf.csv'),[22 301 9]);
control_estimates_csf = reshape(readmatrix('Fig3_control_estimates_csf.csv'),[38 301 6]);
svd_meanmeasured = readmatrix('Fig3_svd_meanmeasured.csv');
svd_meanestimates = readmatrix('Fig3_svd_meanestimates.csv');

h = figure('Renderer','painters','Position',[0 0 1400 1100])
subplot(3,3,1)
hold on
for i = 1:22
    plot(-10:.1:20,svd_estimates(i,:,2),'k','handlevisibility','off')
end
plot([-10 20],[svd_meanmeasured(3,1) svd_meanmeasured(3,1)],'b--','linewidth',2)
plot(-10:.1:20,svd_meanestimates(:,2),'g','LineWidth',3)
title('CMRGlc','fontname','arial','fontsize',20)
ylabel('SUVR','fontname','arial','fontsize',20)
xlabel('d_{les} (mm)')
axis([-5 20 0 1.05])
legend({'NAWM Mean','SUVR(d_{les})'},'location','southeast','fontname','arial','fontsize',14)
set(gca,'fontsize',14)
subplot(3,3,2)
hold on
for i = 1:22
    plot(-10:.1:20,svd_estimates(i,:,3),'k')
end
plot([-10 20],[svd_meanmeasured(3,2) svd_meanmeasured(3,2)],'b--','linewidth',2)
plot(-10:.1:20,svd_meanestimates(:,3),'g','LineWidth',3)
title('CBF','fontname','arial','fontsize',20)
axis([-5 20 0 1.05])
set(gca,'fontsize',14)
subplot(3,3,3)
hold on
for i = 1:22
    plot(-10:.1:20,svd_estimates(i,:,8),'k')
end
plot([-10 20],[svd_meanmeasured(3,7) svd_meanmeasured(3,7)],'b--','linewidth',2)
plot(-10:.1:20,svd_meanestimates(:,8),'g','LineWidth',3)
title('CMRO_2','fontname','arial','fontsize',20)
axis([-5 20 0 1.05])
set(gca,'fontsize',14)

subplot(3,3,4)
hold on
plot([-10 20],[svd_meanmeasured(3,1) svd_meanmeasured(3,1)],'b--','linewidth',2)
m = squeeze(mean(svd_estimates(:,:,2),'omitnan'));
e = squeeze(std(svd_estimates(:,:,2),'omitnan'));
en = nan(1,301);
for i = 1:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'g','linewidth',2)
m = squeeze(mean(svd_estimates_csf(:,:,2),'omitnan'));
e = squeeze(std(svd_estimates_csf(:,:,2),'omitnan'));
en = nan(1,301);
for i = 7:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'m','linewidth',2)
axis([-5 20 0 1.05])
xlabel('d_{les} or d_{csf} (mm)')
ylabel('SUVR','fontname','arial','fontsize',20)
legend({'NAWM Mean','SUVR(d_{les})','SUVR(d_{csf})'},'location','southeast','fontname','arial','fontsize',14)
set(gca,'fontsize',14)
subplot(3,3,5)
hold on
plot([-10 20],[svd_meanmeasured(3,2) svd_meanmeasured(3,2)],'b--','linewidth',2)
m = squeeze(mean(svd_estimates(:,:,3),'omitnan'));
e = squeeze(std(svd_estimates(:,:,3),'omitnan'));
en = nan(1,301);
for i = 1:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'g','linewidth',2)
m = squeeze(mean(svd_estimates_csf(:,:,3),'omitnan'));
e = squeeze(std(svd_estimates_csf(:,:,3),'omitnan'));
en = nan(1,301);
for i = 7:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'m','linewidth',2)
axis([-5 20 0 1.05])
set(gca,'fontsize',14)
subplot(3,3,6)
hold on
plot([-10 20],[svd_meanmeasured(3,7) svd_meanmeasured(3,7)],'b--','linewidth',2)
m = squeeze(mean(svd_estimates(:,:,8),'omitnan'));
e = squeeze(std(svd_estimates(:,:,8),'omitnan'));
en = nan(1,301);
for i = 1:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'g','linewidth',2)
m = squeeze(mean(svd_estimates_csf(:,:,8),'omitnan'));
e = squeeze(std(svd_estimates_csf(:,:,8),'omitnan'));
en = nan(1,301);
for i = 7:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'m','linewidth',2)
axis([-5 20 0 1.05])
set(gca,'fontsize',14)

subplot(3,3,7)
hold on
m = squeeze(mean(svd_estimates_csf(:,:,2)));
e = squeeze(std(svd_estimates_csf(:,:,2)));
en = nan(1,301);
for i = 1:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'m','linewidth',2)
m = squeeze(mean(control_estimates_csf(1:20,:,2)));
e = squeeze(std(control_estimates_csf(1:20,:,2)));
en = nan(1,301);
for i = 6:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'c','linewidth',2)
m = squeeze(mean(control_estimates_csf([21:38],:,2)));
e = squeeze(std(control_estimates_csf([21:38],:,2)));
en = nan(1,301);
for i = 11:15:301
en(i) = e(i);
end
eb = errorbar(-10:.1:20,m,en,'linewidth',2)
eb.Color = [83/256 104/256 140/256];
axis([-5 20 0 1.05])
xlabel('d_{csf} (mm)')
ylabel('SUVR','fontname','arial','fontsize',20)
legend({'SVD','HC-Y','HC-O'},'location','southeast','fontname','arial','fontsize',14)
set(gca,'fontsize',14)
subplot(3,3,8)
hold on
m = squeeze(mean(svd_estimates_csf(:,:,3)));
e = squeeze(std(svd_estimates_csf(:,:,3)));
en = nan(1,301);
for i = 1:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'m','linewidth',2)

m = squeeze(mean(control_estimates_csf(1:20,:,3)));
e = squeeze(std(control_estimates_csf(1:20,:,3)));
en = nan(1,301);
for i = 6:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'c','linewidth',2)
m = squeeze(mean(control_estimates_csf([21:38],:,3)));
e = squeeze(std(control_estimates_csf([21:38],:,3)));
en = nan(1,301);
for i = 11:15:301
en(i) = e(i);
end
eb = errorbar(-10:.1:20,m,en,'linewidth',2)
eb.Color = [83/256 104/256 140/256];
axis([-5 20 0 1.05])

set(gca,'fontsize',14)
subplot(3,3,9)
hold on
m = squeeze(mean(svd_estimates_csf(:,:,8)));
e = squeeze(std(svd_estimates_csf(:,:,8)));
en = nan(1,301);
for i = 1:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'m','linewidth',2)

m = squeeze(mean(control_estimates_csf(1:20,:,6)));
e = squeeze(std(control_estimates_csf(1:20,:,6)));
en = nan(1,301);
for i = 6:15:301
en(i) = e(i);
end
errorbar(-10:.1:20,m,en,'c','linewidth',2)
m = squeeze(mean(control_estimates_csf([21:38],:,6)));
e = squeeze(std(control_estimates_csf([21:38],:,6)));
en = nan(1,301);
for i = 11:15:301
en(i) = e(i);
end
eb = errorbar(-10:.1:20,m,en,'linewidth',2)
eb.Color = [83/256 104/256 140/256];
axis([-5 20 0 1.05])
set(gca,'fontsize',14)
