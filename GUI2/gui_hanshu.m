function [ numberqq ] = gui_hanshu( photo_matrix )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

        load mydata;
        
        photo_matrix=imresize(photo_matrix,[16 16]);
        %photo_matrix=uint8(photo_matrix<=230);
        %thresh=graythresh(photo_matrix);%ȷ����ֵ����ֵ
        %photo_matrix=im2bw(photo_matrix,thresh);%��ͼ���ֵ��
        tmp=photo_matrix';
        tmp=tmp(:);
        %�������������
        x=double(tmp');
        %�õ���������
        y0=x*V;
        %����
        y=1./(1+exp(-y0*yita1));
        %�õ����������
        o0=y*W;
        o=1./(1+exp(-o0*yita1));
        %�����������ʶ�𵽵�����
        [o,index]=sort(o);
        numberqq=index(10);
        index;
        
end

