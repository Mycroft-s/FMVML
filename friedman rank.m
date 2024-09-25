figure; % 打开新图形窗口
barh(1:length(methods), avg_ranks, 'FaceColor', [0.7, 0.7, 0.7]); % 创建水平条形图
set(gca, 'YTick', 1:length(methods), 'YTickLabel', methods, 'YDir', 'reverse'); % 设置y轴的标签
xlabel('Average Rank'); % 设置x轴的标签
title('Ranking of Methods'); % 设置图表标题
grid on; % 添加网格线
