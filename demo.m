tic;
%[X_train,Y_train,X_test,Y_test]=dividata(emotions);
addpath(genpath('metrics'));
addpath(genpath('dataset'));
%load("emotions.mat")
% load("yaleB_mtv.mat")
%load("Yeast.mat")
load("Espgame(1).mat")
%load("Corel5k.mat")
%load("Mirflickr.mat")
% [data,target] = databatch();
% 调整转置
  data=data';
  target=target';

% % % % 缩减数据集
% for i= 1:6
%     A = data{i};
%     A=A(1:200,:);
%     data{i} = A;
% end
% % % %删除视图
% % % 要删除的视图索引
% views_to_remove = [1,2,3];
% % % % 删除指定的视图
% data(views_to_remove) = [];
% % % 现在 multi_view_data 只包含保留的视图
% 
if(min(min(target))<=-1)  
    target(target<0)=0;
end
% 

% % 给数据集对角线加一个值
[data] = datachange(data);
fprintf('data have changed\n');





m=length(data); X_train=cell(m,1); X=cell(m,1); Y_train=[]; X_test=cell(m,1); Y_test=[]; Y=[];
ratio=0.7;
para.k=15;
para.q=50;
para.thr=0.5;

para.a=0.01;%0.01
para.b=100;%100
para.c=0.1;%0.1
para.d=1;%1000
para.e=1;%0.1，1



HL= []; RL= []; OE= []; Cov = []; AP = [];PC=[];RC=[]; FF=[];
HL_all= 0; RL_all= 0; OE_all= 0; Cov_all = 0; AP_all = 0;PC_all=0;RC_all=0; FF_all=0;
for xx=1:m
        temp=abs(data{xx});
    temp=(temp-repmat(min(temp),size(temp,1),1))./repmat(max(temp)-min(temp),size(temp,1),1);
    data{xx}=temp;
end
for ii=1:m
[X_train{ii},Y_train,X_test{ii},Y_test,index] = dividata(data{ii}, target, ratio);
X{ii}=[X_train{ii};X_test{ii}];  
Y=[Y_train,Y_test];
end
time=5;

for i = 1 : time
% Training
[score,Ui,Vi,Wi,W0,S,U]=classfy_main(X,Y,Y_train,para,index);
fprintf('Training%d Finished!\n',i);
fprintf('score%d=%d\n',i,score);

%test
%[P] = test_main(X_test,para,Wi,W0,S,ratio);
 [P] = test_main(X_test,para,Wi,W0,S,ratio,Ui,Vi,U);
 fprintf('Testing%d Finished!\n',i);
 
 %evaluate
 P=P';
PP = P;
PP(P>para.thr) = 1;
PP(P<=para.thr) = 0;

HL=[HL, Hamming_loss(PP,Y_test)];
RL=[RL, Ranking_loss(P,Y_test)];
OE=[OE, One_error(P,Y_test)];
Cov=[Cov, coverage(P,Y_test)];
AP=[AP, Average_precision(P,Y_test)];
PC=[PC, Precision(PP,Y_test)];
RC=[RC, Recall(PP,Y_test)];
FF=[FF, F1(PC(i), RC(i))];

fprintf('******This is %d-th iteration******\n',i);
% fprintf('HL=%f \n RL=%f \n OE=%f \n Cov=%f \n AP=%f\n ',...
%     HL(i),RL(i),OE(i),Cov(i),AP(i));
HL_all= HL_all+HL(i); RL_all= RL_all+RL(i); OE_all= OE_all+OE(i); Cov_all = Cov_all+Cov(i); AP_all = AP_all+AP(i);
PC_all=PC_all+PC(i); RC_all=RC_all+RC(i); FF_all=FF_all+FF(i);
end
% fprintf('HL_std=%f \n RL_std=%f \n OE_std=%f \n Cov_std=%f \n AP_std=%f\n ',...
%     std(HL),std(RL),std(OE),std(Cov),std(AP));
fprintf('HL_average=%f HL_std=%f\n RL_average=%f  RL_std=%f \n OE_average=%f  OE_std=%f\n Cov_average=%f  Cov_std=%f \n AP_average=%f  AP_std=%f\n ',...
    HL_all/time, std(HL),RL_all/time,std(RL),OE_all/time,std(OE),Cov_all/time,std(Cov),AP_all/time,std(AP));
fprintf('precision=%f pre_std=%f\n recall=%f  rc_std=%f \n f1=%f  f1_std=%f\n  ',...
    PC_all/time, std(PC),RC_all/time,std(RC),FF_all/time,std(FF));
elapsedTime = toc;
fprintf('运行时间：%.3f秒\n', elapsedTime);