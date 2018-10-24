%�Ѵ���ŵ��Ų�����
function [Call Put]=bsprice(S0,K,r,T,sigma)
% call:������Ȩ 
% put:������Ȩ 
% S0����Ʊ���ּ� 
% K����Ȩִ�м۸� 
% r:�޷������� 
% T�� ��Ȩ������ 
% sigma��������
d1=(log(S0/K)+(r+0.5*sigma^2)*T)/(sigma*sqrt(T));
% d1�ļ���
d2=d1-(sigma*sqrt(T)); 
% d2�ļ��� 
Call=S0*normcdf(d1)-K*exp(-r*T)*normcdf(d2);   % ����Black-Schole��ʽ���㿴����Ȩ�۸�

Put=K*exp(-r*T)*normcdf(-d2)-S0*normcdf(-d1);% ���㿴����Ȩ�۸�

%����