%把代码放到脚步这里
function [Call Put]=bsprice(S0,K,r,T,sigma)
% call:看涨期权 
% put:看跌期权 
% S0：股票的现价 
% K：期权执行价格 
% r:无风险利率 
% T： 期权存续期 
% sigma：波动率
d1=(log(S0/K)+(r+0.5*sigma^2)*T)/(sigma*sqrt(T));
% d1的计算
d2=d1-(sigma*sqrt(T)); 
% d2的计算 
Call=S0*normcdf(d1)-K*exp(-r*T)*normcdf(d2);   % 利用Black-Schole公式计算看涨期权价格

Put=K*exp(-r*T)*normcdf(-d2)-S0*normcdf(-d1);% 计算看跌期权价格

%保存