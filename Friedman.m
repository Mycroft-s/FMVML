% 示例数据：每一列代表一个方法，每一行代表一个数据集
% 示例数据：每一列代表一个方法，每一行代表一个数据集
%AP
% data = [
%     0.603 0.579 0.551 0.574 0.577;
%     0.720 0.581 0.511 0.511 0.531;
%     0.322 0.310 0.288 0.267 0.281;
%     0.379 0.211 0.163 0.342 0.197;
%     0.267 0.048 0.056 0.256 0.231;
%     0.089 0.019 0.021 0.061 0.059;
% ];
%HL
% data = [
%     0.293 0.625 0.691 0.323 0.316;
%     0.258 0.302 0.301 0.305 0.301;
%     0.101 0.457 0.511 0.552 0.519;
%     0.013 0.013 0.011 0.679 0.858;
%     0.023 0.018 0.017 0.024 0.023;
%     0.005 0.006 0.05 0.853 0.055;
% ];
%OE
% data = [
%     0.509 0.566 0.629 0.611 0.551;
%     0.267 0.584 0.528 0.591 0.551;
%     0.891 0.891 0.904 0.936 0.919;
%     0.627 0.795 0.967 0.647 0.817;
%     0.634 0.955 0.943 0.686 0.657;
%     0.672 0.993 0.996 0.954 0.942;
% ];
%RL
% data = [
%     0.395 0.421 0.472 0.442 0.442;
%     0.214 0.274 0.405 0.371 0.344;
%     0.494 0.501 0.507 0.506 0.505;
%     0.166 0.234 0.418 0.065 0.157;
%     0.136 0.488 0.441 0.206 0.233;
%     0.179 0.465 0.491 0.372 0.371;
% ];
%COV
data = [
    2.935 3.43 3.42 3.192 3.057;
    6.683 7.044 9.426 9.205 8.753;
    4.452 4.716 4.568 4.551 4.542;
    32.583 76.378 178.497 39.245 87.799;
    132.526 209.589 204.645 154.127 166.639;
    117.551 243.763 238.786 178.427 193.652;
];
% 获取数据集数量（N）和方法数量（m）
[N, m] = size(data);
% 对每个数据集的方法进行排序并计算排名
ranks = zeros(N, m);
for i = 1:N
    ranks(i, :) = tiedrank(data(i, :));
end
% for i = 1:N
%     ranks(i, :) = tiedrank(-data(i, :));
% end
% 计算每个方法的平均排名
mean_ranks_methods = mean(ranks, 1);
% 输出每个方法的平均排名
for j = 1:m
    disp(['Method ', num2str(j), ' Average Rank: ', num2str(mean_ranks_methods(j))]);
end
% 计算Friedman检验的χ²F
chi2_F = (12 * N / (m * (m + 1))) * sum(mean_ranks_methods.^2) - (3 * N * (m + 1));
% 计算修正的Friedman检验的τF
tau_F = ((N - 1) * chi2_F) / ((N * (m - 1)) - chi2_F);
% 显示计算结果
disp(['Friedman Chi-square (χ²F): ', num2str(chi2_F)]);
disp(['Iman-Davenport tau (τF): ', num2str(tau_F)]);

