% ��ʱ������ȱʧ�������ݽ������Բ�ֵ 
function sp=chazhi(SPrice) %����chazhi����
z=SPrice(size(SPrice,1),1)-SPrice(1,1)+1;  
%������������,SPrice�����ĵ�һ���е����һ������ȥ��һ����
p=zeros(z,2);                       
%��ʼ��P��������z��2��ȫΪ0�����p����
p(1,:)=SPrice(1,:);        % ��SPrice�����һ�е���ȫ����ֵ��p����ĵ�һ��
k=1;
    for i=1:(size(SPrice,1)-1)     %  ��ѭ����� 
        m=SPrice(i+1,1)-SPrice(i,1); %��SPrice�����ǰһ������ȥ��һ����
        for j=1:m                        % ��ѭ�����
            p(k+j-1,:)=[SPrice(i,1)+j-1,SPrice(i,2)+(j-1)*(SPrice(i+1,2)- SPrice(i,2))/m];
            % ��ԭ����SPrice�������Բ�ֵ�������¸�ֵ��p����
        end                             %��ѭ�������� 
        k=k+m;
    end
p(z,:)=SPrice(size(SPrice,1),:); 
sp=p;
% p����ȫ����ֵ��sp����

            