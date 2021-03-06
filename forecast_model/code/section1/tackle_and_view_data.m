function tackle_and_view_data
%% 环境清理
clc
clear
close all
%% 数据读取
y1 = importdata('data.txt');
%% 调用MATLAB工具箱分解信号
% 小波的一维分解
[c,l] = wavedec(y1,10,'db5');
% 重构第1~7层逼近信号
a10 = wrcoef('a',c,l,'db5',10);
a9 = wrcoef('a',c,l,'db5',9);
a8 = wrcoef('a',c,l,'db5',8);
a7 = wrcoef('a',c,l,'db5',7);
a6 = wrcoef('a',c,l,'db5',6);
a5 = wrcoef('a',c,l,'db5',5);
a4 = wrcoef('a',c,l,'db5',4);
a3 = wrcoef('a',c,l,'db5',3);
a2 = wrcoef('a',c,l,'db5',2);
a1 = wrcoef('a',c,l,'db5',1);
% 重构第1~7层细节信号
d10 = wrcoef('d',c,l,'db5',10);
d9 = wrcoef('d',c,l,'db5',9);
d8 = wrcoef('d',c,l,'db5',8);
d7 = wrcoef('d',c,l,'db5',7);
d6 = wrcoef('d',c,l,'db5',6);
d5 = wrcoef('d',c,l,'db5',5);
d4 = wrcoef('d',c,l,'db5',4);
d3 = wrcoef('d',c,l,'db5',3);
d2 = wrcoef('d',c,l,'db5',2);
d1 = wrcoef('d',c,l,'db5',1);
%% 图示化
figure
subplot(4,1,1);
plot(y1,'LineWidth',2);
axis tight;
xlabel('2000年1月1日到2006年12月31日时间序列','fontsize',11);
ylabel('实际日供水量/吨','fontsize',11);
title('图（a）','fontsize',11);
subplot(4,1,2);
plot(d5,'LineWidth',2.5);
axis tight;
xlabel('2000年1月1日到2006年12月31日时间序列','fontsize',11);
ylabel('日供水量正弦周期','fontsize',11);
title('图（b）','fontsize',11);
subplot(4,1,3);
plot(d8,'LineWidth',4.5);
axis tight;
xlabel('2000年1月1日到2006年12月31日时间序列','fontsize',11);
ylabel('日供水量高低峰','fontsize',11);
title('图（c）','fontsize',11);
subplot(4,1,4);
plot(a10,'LineWidth',4.5);
axis tight;
xlabel('2000年1月1日到2006年12月31日时间序列','fontsize',11);
ylabel('年度供水量增长','fontsize',11);
title('图（d）','fontsize',11);
