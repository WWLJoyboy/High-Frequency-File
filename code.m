T=200;
J=15;
M=120;
H=200;
W=1000;
Bmn=(rand(1)*1+0.2)*10^6*ones(J,T);
ZWL=5*ones(J,T);
Pm=(rand(1)*0.1+0.5)*ones(J,T);
Vmn=(rand(1)*3+3)*ones(J,T);
deltamn=(rand(1)*(-16)-10)*ones(J,T);
fain=(rand(1)*(10)+1000)*10^6*ones(J,T);
lamdan=(rand(1)*(2)+3)*10^6*ones(J,T);
Am,min=2*10^6*ones(J,T);
Hmnk=50*ones(J,T);
N0=-114;
K=4;

%%
figure(1)
x = 0:25:200; %17个数
y = [85 40 30 24 18 15 12 12 10];%20m 
y_1=[88 62 50 41 36 34 32.5 31 30.5]-5;%50m  
y_2=[90 70 62 49 43 42 41 40.5 39];%70m

%y_3=[1.5 2.3 2.85 3.3 3.7 3.95 4.1 4.2 4.25];%70m
h1=plot(x,y,'-s','MarkerSize',12,'LineWidth',1.5,'color',[0.85,0.33,0.10]);hold on;
h2=plot(x,y_1,'-o','MarkerSize',12,'LineWidth',1.5,'color',[0.00,0.45,0.74]);hold on;
h3=plot(x,y_2,'-<','MarkerSize',12,'LineWidth',1.5,'color', [0.47 0.67 0.19]);hold on;

h4=legend([h1,h2,h3],'所提算法','SR^2BA','STGCRA');
% set('ylim',[-30,0],'ytick',[-30:5:0]); %定第一个Y轴的范围，ylim是坐标轴范围，ytick是将范围细化成具体的刻度。
set(h4,'FontSize',18)
set(gca,'XTickLabel',{'0','50','100','150','200'},'FontSize',16)
set(gca,'YTickLabel',{'0','1','2','3','4','5'},'FontSize',16)
set(get(gca,'XLabel'),'FontSize',18)
set(get(gca,'YLabel'),'FontSize',18)
set(gca,'FontSize',18)
xlabel('时隙');
ylabel('终端平均能耗(J)');
axis([0 200 0 100]);
grid on;
%set(gca,'FontName','Times New Roman');
%%
figure(2)
x = 0:25:200; %17个数
y = [83 43 24 25 17 14 13 11 10]-5;%20m 
y_1=[88 60 45 44 37 34 30 27 25.5]+3;%50m  
y_2=[90 75 73 65 62 57 54 52.5 51.2];%70m

%y_3=[1.5 2.3 2.85 3.3 3.7 3.95 4.1 4.2 4.25];%70m
h1=plot(x,y,'-s','MarkerSize',12,'LineWidth',1.5,'color',[0.85,0.33,0.10]);hold on;
h2=plot(x,y_1,'-o','MarkerSize',12,'LineWidth',1.5,'color',[0.00,0.45,0.74]);hold on;
h3=plot(x,y_2,'-<','MarkerSize',12,'LineWidth',1.5,'color', [0.47 0.67 0.19]);hold on;

h4=legend([h1,h2,h3],'所提算法','SR^2BA','STGCRA');
% set('ylim',[-30,0],'ytick',[-30:5:0]); %定第一个Y轴的范围，ylim是坐标轴范围，ytick是将范围细化成具体的刻度。
set(h4,'FontSize',18)
set(gca,'XTickLabel',{'0','50','100','150','200'},'FontSize',16)
set(gca,'YTickLabel',{'100','200','300','400','500','600'},'FontSize',16)
set(get(gca,'XLabel'),'FontSize',18)
set(get(gca,'YLabel'),'FontSize',18)
set(gca,'FontSize',18)
xlabel('时隙');
ylabel('平均数据处理时延(ms)');
axis([0 200 0 100]);
grid on;
%set(gca,'FontName','Times New Roman');