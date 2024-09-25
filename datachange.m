function [multi_view_data] = datachange(multi_view_data)
% ���� multi_view_data ��һ�� cell ���飬����ÿ�� cell ����һ����ͼ������
num_views = length(multi_view_data);

% ��Сֵ��������ӵ��Խ���λ��
epsilon = 1e-10;

% ����ÿ����ͼ
for i = 1:num_views
    % ��ȡ��ǰ��ͼ
    view_data = multi_view_data{i};
    
    % ɾ��ȫΪ�����
    non_zero_cols = any(view_data, 1);
    view_data = view_data(:, non_zero_cols);
    
    % ��ȡ��ǰ��ͼ�Ĵ�С
    [num_rows, num_cols] = size(view_data);
    
    % ���Խ���λ�ü��ϼ�Сֵ
    min_dim = min(num_rows, num_cols);
    for j = 1:min_dim
        view_data(j, j) = view_data(j, j) + epsilon;
    end
    
    % �����������ͼ���ݴ�� multi_view_data
    multi_view_data{i} = view_data;
end

end

