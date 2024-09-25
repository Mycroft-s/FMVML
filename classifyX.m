function [Pi,Ui,Vi,Wi,scoreX] = classifyX(X,U,P,YY,S,Wi,Vi,Pi_set,Ui_set,a,b,c,e)
%CLASSIFY �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
% user update
%ֻ��һ����ͼ��Xi��Ϣ���д�������ֽⲢ�Ż���������һ��
% X n*dά��

 %Update Ui  on Lk;ֱ����/  ������  ���󲻿��治��ֱ����
 %T0=Ui_set*Vi;
 Ui_up=2*a*Pi_set*Wi'* Vi'+2*c*U+2 *X* Vi';
 %2*a*ui*vi*wi*wi��* vi��+2*ui�6�6vi*vi��+2�6�6c�6�6ui
 Ui_down=2*a*Ui_set*Vi*(Wi*Wi')* Vi'+2*Ui_set*(Vi*Vi')+2*c*Ui_set;
 %Ui_down=2*a*Vi*(Wi*Wi')* Vi'+2*(Vi*Vi')+2*c;
 Ui_set=Ui_set.*(Ui_up./Ui_down);
  %Ui_set=Ui_up/Ui_down;
 norms = sum(abs(Ui_set),2);
  norms = max(norms,1e-30);
  Ui_set=abs(Ui_set)./repmat(norms,1,size(Ui_set,2));
%   Ui_set(isnan(Ui_set))=0;
  
%Updata Vi  on Lk;����ֱ����
%T1=Ui_set*Vi;
Vi_up=2*a*Ui_set'*Pi_set*Wi'+2*Ui_set'*X+2*(Ui_set'*Ui_set)*Vi ;
Vi_down=2*a*(Ui_set'*Ui_set)*Vi*(Wi*Wi') ;
Vi= Vi.*(Vi_up./Vi_down) ;

 norms = sum(abs(Vi),2);
  norms = max(norms,1e-30);
  Vi=abs(Vi)./repmat(norms,1,size(Vi,2));
%   Vi(isnan(Vi))=0;
  
%Update Wi  on Lk;ֱ����\  ������ ���󲻿��治��ֱ����
T2=Ui_set*Vi;
Wi_up=2*a*T2'*Pi_set;
Wi_down=2*b*Wi+2*a*(T2'*T2)*Wi;
%Wi_down=2*b+2*a*(T2'*T2);
%Wi=Wi_down\Wi_up;     
Wi=Wi.*(Wi_up./Wi_down);

%  norms = sum(abs(Wi),2);
%   norms = max(norms,1e-30);
%   Wi=abs(Wi)./repmat(norms,1,size(Wi,2));


%Updata Pi  on Lk; ����ֱ����./
Pi_up=2*e*YY'*S'+2*a*Ui_set*Vi*Wi;
Pi_down=2*a*Pi_set+2*e*(P+Pi_set)*(S*S');
Pi_set=Pi_set.*(Pi_up./Pi_down);

 norms = sum(abs(Pi_set),2);
  norms = max(norms,1e-30);
  Pi_set=abs(Pi_set)./repmat(norms,1,size(Pi_set,2));
%   Pi_set(isnan(Pi_set))=0;
  
%OUTPUT
Pi =Pi_set;
Ui =Ui_set;
%
aa=norm(((Ui*Vi)*Wi-Pi),'fro')*norm(((Ui*Vi)*Wi-Pi),'fro');
bb=norm(Wi,'fro')*norm(Wi,'fro');
scoreX=norm((X-Ui*Vi),'fro')*norm((X-Ui*Vi),'fro')+a*aa+b*bb;
end