function [X_train, Y_train,  X_test, Y_test,index] = dividata(X, Y,  ratio)
%SPLIT_DATA ���ڽ����ݼ��ָ��ѵ�����Ͳ��Լ�
%   ���룺
%       X: ��������ÿһ��Ϊһ��������ÿһ��Ϊһ������
%       Y: ��ǩ������ÿ��Ԫ��Ϊһ������������ǩ
%       ratio: ѵ������ռ����
%   �����
%       X_train: ѵ��������������
%       Y_train: ѵ�����ı�ǩ����
%       X_test: ���Լ�����������
%       Y_test: ���Լ��ı�ǩ����

% ��ȡ���ݼ���������������������
m = size(X, 1);
n = size(Y, 1);

% �����ݼ��������ͱ�ǩ�������
perm = randperm(m);
X = X(perm, :);
Y = Y(:, perm);
index=size(m,1);
% ����ѵ�����Ĵ�С
m_train = floor(m * ratio);


vector_length = m;  % ��������Զ�����������

% ����1��0������
num_ones = round(vector_length * ratio);
num_zeros = vector_length - num_ones;

% ��������
index = [ones(1, num_ones), zeros(1, num_zeros)];


% ��ȡѵ�����Ͳ��Լ��������ͱ�ǩ
X_train = X(1:m_train, :);
Y_train = Y(:,1:m_train);
X_test = X(m_train+1:end, :);
Y_test = Y(:,m_train+1:end);
fprintf('finished divide\n');
end

