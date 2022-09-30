indices = 48:16:208;

% Figure 2B CMRglc
x = reshape(readmatrix('Fig2B_cmrglc.csv'),[22,4,11]);
figure
errorbar(indices./256,squeeze(mean(x(:,2,:))),squeeze(std(x(:,2,:))),'linewidth',2,'color','b')
hold on
errorbar(indices./256-.01,squeeze(mean(x(:,3,:))),squeeze(std(x(:,3,:))),'linewidth',2,'color','k')
errorbar(indices./256+.01,squeeze(mean(x(:,4,:))),squeeze(std(x(:,4,:))),'linewidth',2,'color','r')
xlabel('NAWM Purity','fontname','arial')
ylabel('SUVR','fontname','arial')
title('CMRGlc','fontname','arial')
axis([.1 .9 -1.5 2])
set(gca,'fontsize',16)

% Figure 2B CBF
x = reshape(readmatrix('Fig2B_cbf.csv'),[22,4,11]);
figure
errorbar(indices./256,squeeze(mean(x(:,2,:))),squeeze(std(x(:,2,:))),'linewidth',2,'color','b')
hold on
errorbar(indices./256-.01,squeeze(mean(x(:,3,:))),squeeze(std(x(:,3,:))),'linewidth',2,'color','k')
errorbar(indices./256+.01,squeeze(mean(x(:,4,:))),squeeze(std(x(:,4,:))),'linewidth',2,'color','r')
xlabel('NAWM Purity','fontname','arial')
ylabel('SUVR','fontname','arial')
title('CBF','fontname','arial')
axis([.1 .9 -1.5 2])
set(gca,'fontsize',16)

% Figure 2B CMRO2
x = reshape(readmatrix('Fig2B_cmro2.csv'),[22,4,11]);
figure
errorbar(indices./256,squeeze(mean(x(:,2,:))),squeeze(std(x(:,2,:))),'linewidth',2,'color','b')
hold on
errorbar(indices./256-.01,squeeze(mean(x(:,3,:))),squeeze(std(x(:,3,:))),'linewidth',2,'color','k')
errorbar(indices./256+.01,squeeze(mean(x(:,4,:))),squeeze(std(x(:,4,:))),'linewidth',2,'color','r')
xlabel('NAWM Purity','fontname','arial')
ylabel('SUVR','fontname','arial')
title('CMRO_2','fontname','arial')
axis([.1 .9 -1.5 2])
set(gca,'fontsize',16)

% Figure 2B GI
x = reshape(readmatrix('Fig2B_gi.csv'),[22,4,11]);
figure
errorbar(indices./256,squeeze(mean(x(:,2,:))),squeeze(std(x(:,2,:))),'linewidth',2,'color','b')
hold on
errorbar(indices./256-.01,squeeze(mean(x(:,3,:))),squeeze(std(x(:,3,:))),'linewidth',2,'color','k')
errorbar(indices./256+.01,squeeze(mean(x(:,4,:))),squeeze(std(x(:,4,:))),'linewidth',2,'color','r')
xlabel('NAWM Purity','fontname','arial')
ylabel('SUVR','fontname','arial')
title('GI','fontname','arial')
axis([.1 .9 -1 1])
set(gca,'fontsize',16)