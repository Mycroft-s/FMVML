function [data,target] = databatch()
% ����.mat�ļ�·�����ļ���
file_paths = ["data_batch_1.mat", "data_batch_2.mat", "data_batch_3.mat", "data_batch_4.mat", "data_batch_5.mat", "test_batch.mat"];
% ��ʼ��������
data = cell(6,1);
target = [];

% ѭ�����������ļ�
for i = 1:length(file_paths)
    % ����.mat�ļ�
    dataq = load(file_paths(i), 'data');
    labelsq = load(file_paths(i), 'labels');
   
    data1=double(dataq.data);
    target0=double(labelsq.labels);
    
    % ��data��labels��ӵ�����ĩβ
    data{i} = data1;
    target = cat(2, target, target0);
end

end

