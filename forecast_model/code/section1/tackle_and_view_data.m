function tackle_and_view_data
%% ��������
clc
clear
close all
%% ���ݶ�ȡ
y1 = importdata('data.txt');
%% ����MATLAB������ֽ��ź�
% С����һά�ֽ�
[c,l] = wavedec(y1,10,'db5');
% �ع���1~7��ƽ��ź�
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
% �ع���1~7��ϸ���ź�
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
%% ͼʾ��
figure
subplot(4,1,1);
plot(y1,'LineWidth',2);
axis tight;
xlabel('2000��1��1�յ�2006��12��31��ʱ������','fontsize',11);
ylabel('ʵ���չ�ˮ��/��','fontsize',11);
title('ͼ��a��','fontsize',11);
subplot(4,1,2);
plot(d5,'LineWidth',2.5);
axis tight;
xlabel('2000��1��1�յ�2006��12��31��ʱ������','fontsize',11);
ylabel('�չ�ˮ����������','fontsize',11);
title('ͼ��b��','fontsize',11);
subplot(4,1,3);
plot(d8,'LineWidth',4.5);
axis tight;
xlabel('2000��1��1�յ�2006��12��31��ʱ������','fontsize',11);
ylabel('�չ�ˮ���ߵͷ�','fontsize',11);
title('ͼ��c��','fontsize',11);
subplot(4,1,4);
plot(a10,'LineWidth',4.5);
axis tight;
xlabel('2000��1��1�յ�2006��12��31��ʱ������','fontsize',11);
ylabel('��ȹ�ˮ������','fontsize',11);
title('ͼ��d��','fontsize',11);