% 对时间序列缺失的日数据进行线性插值 
function sp=chazhi(SPrice) %建立chazhi函数
z=SPrice(size(SPrice,1),1)-SPrice(1,1)+1;  
%计算数据行数,SPrice函数的第一个列的最后一个数减去第一个数
p=zeros(z,2);                       
%初始化P矩阵，生成z行2列全为0矩阵的p矩阵
p(1,:)=SPrice(1,:);        % 将SPrice矩阵第一行的数全部赋值给p矩阵的第一行
k=1;
    for i=1:(size(SPrice,1)-1)     %  外循环语句 
        m=SPrice(i+1,1)-SPrice(i,1); %将SPrice数组的前一个数减去后一个数
        for j=1:m                        % 内循环语句
            p(k+j-1,:)=[SPrice(i,1)+j-1,SPrice(i,2)+(j-1)*(SPrice(i+1,2)- SPrice(i,2))/m];
            % 对原数据SPrice进行线性插值，并重新赋值给p矩阵
        end                             %内循环语句结束 
        k=k+m;
    end
p(z,:)=SPrice(size(SPrice,1),:); 
sp=p;
% p矩阵全部赋值给sp矩阵

            