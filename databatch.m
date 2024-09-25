function [data,target] = databatch()
% 设置.mat文件路径和文件名
file_paths = ["data_batch_1.mat", "data_batch_2.mat", "data_batch_3.mat", "data_batch_4.mat", "data_batch_5.mat", "test_batch.mat"];
% 初始化空向量
data = cell(6,1);
target = [];

% 循环遍历所有文件
for i = 1:length(file_paths)
    % 加载.mat文件
    dataq = load(file_paths(i), 'data');
    labelsq = load(file_paths(i), 'labels');
   
    data1=double(dataq.data);
    target0=double(labelsq.labels);
    
    % 将data和labels添加到向量末尾
    data{i} = data1;
    target = cat(2, target, target0);
end

end

