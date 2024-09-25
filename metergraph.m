% % 定义五个方法的运行时间
% times = [45.846, 57.163,  74.752, 31.523, 31.256];
% 
% % 定义每个方法对应的颜色
% colors = [
%     0.1, 0.2, 0.5;  % 深蓝色
%     0.8, 0.1, 0.1;  % 红色
%     0.2, 0.7, 0.2;  % 绿色
%     0.5, 0.5, 0.1;  % 橄榄色
%     0.9, 0.6, 0.2;  % 橙色
% ];
% 
% % 创建柱状图
% b = bar(1:5, times, 'BarWidth',1,'FaceColor', 'flat');
% % 增加X轴的范围
% xlim([0 6]); % 你可以根据需要调整这个范围
% % 为每个柱子设置特定颜色
% for k = 1:length(times)
%     b.CData(k,:) = colors(k,:);
% end
% 
% % 设置横坐标标签为方法名称
% set(gca, 'xticklabel', {'FMVML', 'V-FedMV', 'MMVFL', 'supFL', 'supMVLFL'},'FontSize', 13);
% 
% % 添加标题和轴标签
% title('yaleBmtv','FontSize', 24);
% ylabel('Execution time (seconds)','FontSize', 20);
% 
% % 定义五个方法的运行时间
% times = [1919.762  5396.762 3987.110	5364.514	3512.99];
% 
% % 定义每个方法对应的颜色
% colors = [
%     0.1, 0.2, 0.5;  % 深蓝色
%     0.8, 0.1, 0.1;  % 红色
%     0.2, 0.7, 0.2;  % 绿色
%     0.5, 0.5, 0.1;  % 橄榄色
%     0.9, 0.6, 0.2;  % 橙色
% ];
% 
% % 创建柱状图
% b = bar(1:5, times, 'BarWidth',1,'FaceColor', 'flat');
% % 增加X轴的范围
% xlim([0 6]); % 你可以根据需要调整这个范围
% % 为每个柱子设置特定颜色
% for k = 1:length(times)
%     b.CData(k,:) = colors(k,:);
% end
% 
% % 设置横坐标标签为方法名称
% set(gca, 'xticklabel', {'FMVML', 'V-FedMV', 'MMVFL', 'supFL', 'supMVLFL'},'FontSize', 13);
% 
% % 添加标题和轴标签
% title('Corel5k','FontSize', 24);
% ylabel('Execution time (seconds)','FontSize', 20);

% % k ap
x = 1:1:8; % x轴上的数据
b = [0.711, 0.716, 0.719, 0.716, 0.717, 0.708, 0.709, 0.713]; % b数据y值
plot(x, b, '-or'); % 线性，颜色，标记
fontSizey=14;
fontSizex = 24; % 你可以根据需要调整这个值
% 设置坐标轴描述的字体大小
xlabel('\textit{k}', 'FontSize', fontSizex); % x轴坐标描述
ylabel('Avaerage Precision', 'FontSize', fontSizey); % y轴坐标描述
%title('Yeast', 'FontSize', fontSizex);

axis([1, 8, 0.68, 0.74]) % 确定x轴与y轴框图大小
set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
set(gca, 'xticklabel', {'0.3', '0.4', '0.5', '0.6', '0.7', '0.8', '0.9', '1'});
set(gca, 'YTick', [0.68,0.7,0.72,0.74]) % y轴范围

pbaspect([3 1 1]);
% 
% %K rl
% x = 1:1:8; % x轴上的数据
% b = [0.202, 0.204, 0.193, 0.204, 0.200, 0.204, 0.201, 0.206]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([1, 8, 0.18, 0.24]) % 确定x轴与y轴框图大小，注意我已经调整了y轴的上限为1
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'0.3', '0.4', '0.5', '0.6', '0.7', '0.8', '0.9', '1'});
% set(gca, 'YTick', [ 0.18,0.2,0.22,0.24]) % y轴范围
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% %设置坐标轴描述的字体大小
% xlabel('k', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Ranking Loss', 'FontSize', fontSizey); % y轴坐标描述
% %title('Yeast', 'FontSize', fontSizex);
% pbaspect([3 1 1]);


% % a ap
% x = 1:1:8; % x轴上的数据
% b = [0.708, 0.701, 0.716, 0.714, 0.697, 0.698, 0.696, 0.683]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('\alpha', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Avaerage Precision', 'FontSize', fontSizey); % y轴坐标描述
% title('Yeast', 'FontSize', fontSizex);
% 
% axis([1, 8, 0.68, 0.74]) % 确定x轴与y轴框图大小
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'10^{-4}', '10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}', '10^{3}'});
% set(gca, 'YTick', [0.68,0.7,0.72,0.74]) % y轴范围
% 
% pbaspect([3 1 1]);

% %a rl
% x = 1:1:8; % x轴上的数据
% b = [0.207, 0.213, 0.203, 0.208, 0.215, 0.213, 0.212, 0.223]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([1, 8, 0.18, 0.24]) % 确定x轴与y轴框图大小，注意我已经调整了y轴的上限为1
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'10^{-4}', '10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}', '10^{3}'});
% set(gca, 'YTick', [ 0.18,0.2,0.22,0.24]) % y轴范围
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% %设置坐标轴描述的字体大小
% xlabel('\alpha', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Ranking Loss', 'FontSize', fontSizey); % y轴坐标描述
% title('Yeast', 'FontSize', fontSizex);
% pbaspect([3 1 1]);

% %b ap
% x = 1:1:8; % x轴上的数据
% b = [0.699, 0.712, 0.705, 0.705, 0.711, 0.708, 0.710, 0.692]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% 
% axis([1, 8, 0.68, 0.74]) % 确定x轴与y轴框图大小，注意我已经调整了y轴的上限为1
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'10^{-4}', '10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}', '10^{3}'});
% set(gca, 'YTick', [0.68,0.7,0.72,0.74]) % y轴范围
% 
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('\beta', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Avaerage Precision', 'FontSize', fontSizey); % y轴坐标描述
% title('Yeast', 'FontSize', fontSizex);
% pbaspect([3 1 1]);

%b rl
% x = 1:1:8; % x轴上的数据
% b = [0.207, 0.213, 0.203, 0.208, 0.215, 0.213, 0.212, 0.223]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([1, 8, 0.18, 0.24]) % 确定x轴与y轴框图大小，注意我已经调整了y轴的上限为1
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'10^{-4}', '10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}', '10^{3}'});
% set(gca, 'YTick', [ 0.18,0.2,0.22,0.24]) % y轴范围
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% %设置坐标轴描述的字体大小
% xlabel('\beta', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Ranking Loss', 'FontSize', fontSizey); % y轴坐标描述
% title('Yeast', 'FontSize', fontSizex);
% pbaspect([3 1 1]);

% %c ap
% x = 1:1:8; % x轴上的数据
% b = [0.695, 0.687, 0.694, 0.712, 0.709, 0.697, 0.696, 0.695]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([1, 8, 0.68, 0.74]) % 确定x轴与y轴框图大小，注意我已经调整了y轴的上限为1
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'10^{-4}', '10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}', '10^{3}'});
% set(gca, 'YTick', [0.68,0.7,0.72,0.74]) % y轴范围
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('\gamma', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Avaerage Precision', 'FontSize', fontSizey); % y轴坐标描述
% title('Yeast', 'FontSize', fontSizex);
% pbaspect([3 1 1]);

%c rl
% x = 1:1:8; % x轴上的数据
% b = [0.212, 0.219, 0.212, 0.211, 0.212, 0.214, 0.218, 0.213]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([1, 8, 0.18, 0.24]) % 确定x轴与y轴框图大小，注意我已经调整了y轴的上限为1
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'10^{-4}', '10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}', '10^{3}'});
% set(gca, 'YTick', [ 0.18,0.2,0.22,0.24]) % y轴范围
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('\gamma', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Ranking Loss', 'FontSize', fontSizey); % y轴坐标描述
% title('Yeast', 'FontSize', fontSizex);
% pbaspect([3 1 1]);

% % %d ap
% x = 1:1:8; % x轴上的数据
% b = [0.708, 0.704, 0.703, 0.694, 0.695, 0.718, 0.715, 0.719]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([1, 8, 0.68, 0.74]) % 确定x轴与y轴框图大小，注意我已经调整了y轴的上限为1
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'10^{-4}', '10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}', '10^{3}'});
% set(gca, 'YTick', [0.68,0.7,0.72,0.74]) % y轴范围
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('\delta', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Avaerage Precision', 'FontSize', fontSizey); % y轴坐标描述
% title('Yeast', 'FontSize', fontSizex);
% pbaspect([3 1 1]);

%d rl
% x = 1:1:8; % x轴上的数据
% b = [0.211, 0.214, 0.210, 0.215, 0.217, 0.204, 0.204, 0.202]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([1, 8, 0.18, 0.24]) % 确定x轴与y轴框图大小，注意我已经调整了y轴的上限为1
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'10^{-4}', '10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}', '10^{3}'});
% set(gca, 'YTick', [ 0.18,0.2,0.22,0.24]) % y轴范围
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('\delta', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Ranking Loss', 'FontSize', fontSizey); % y轴坐标描述
% title('Yeast', 'FontSize', fontSizex);
% pbaspect([3 1 1]);

% %e ap
% x = 1:1:8; % x轴上的数据
% b = [0.704, 0.705, 0.717, 0.714, 0.712, 0.702, 0.695, 0.692]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([1, 8, 0.68, 0.74]) % 确定x轴与y轴框图大小，注意我已经调整了y轴的上限为1
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'10^{-4}', '10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}', '10^{3}'});
% set(gca, 'YTick', [0.68,0.7,0.72,0.74]) % y轴范围
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('\epsilon', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Avaerage Precision', 'FontSize', fontSizey); % y轴坐标描述
% title('Yeast', 'FontSize', fontSizex);
% pbaspect([3 1 1]);

%e rl
% x = 1:1:8; % x轴上的数据
% b = [0.209, 0.211, 0.197, 0.198, 0.201, 0.210, 0.219, 0.213]; % b数据y值
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([1, 8, 0.18, 0.24]) % 确定x轴与y轴框图大小，注意我已经调整了y轴的上限为1
% set(gca, 'XTick', 1:1:8) % x轴范围1-8，间隔1
% set(gca, 'xticklabel', {'10^{-4}', '10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}', '10^{3}'});
% set(gca, 'YTick', [ 0.18,0.2,0.22,0.24]) % y轴范围
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('\epsilon', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Ranking Loss', 'FontSize', fontSizey); % y轴坐标描述
% title('Yeast', 'FontSize', fontSizex);
% pbaspect([3 1 1]);


% %ESPGAME 的收敛性分析图
% x = 1:1:20; % x轴上的数据
% b = [8611182.120228, 3038825.098300, 3017513.025371, 2882108.698548, 2745057.568186, 2617438.442070, 2508944.003084, 2419756.102713,2345507.493858,2308793.642202,2330416.099866,2287994.155092,2240989.933701,2202917.939241,2179627.569799,2168521.654507,2165940.307542,2169721.724906,2178480.890118,2189297.110050]; 
% b = b / 1e7; % 将 b 的值转换为 10^7 的形式
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([0, 20, 0.2, 1]) % 确定x轴与y轴框图大小
% set(gca, 'XTick', [0,5,10,15,20]) % x轴范围0-20，间隔5
% set(gca, 'YTick', 0.2:0.2:1) % y轴范围0-1，间隔0.2
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('the number of iteratins', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Converage', 'FontSize', fontSizey); % y轴坐标描述
% title('Espgame', 'FontSize', fontSizex);
% pbaspect([2 1 1]);
% % 添加 10^7 注释
% ax = gca;
% text(ax.XLim(1)+0.5, ax.YLim(2)+0.05, 'x 10^7', 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');
% 
% %ESPGAME 的收敛性分析图
% x = 1:1:20; % x轴上的数据
% b = [12119935.645094, 6521536.758972, 6477079.991881, 6139118.695953, 5731813.455952, 5466623.593973, 5301672.181724, 5195416.861538,5091900.994786, 5065846.432373, 5044283.462027,5025277.565261,5007373.772322,4989981.848598,4974472.671746,4943188.230237,4922254.152323,4922179.600368,4921633.921009,4917154.569953]; 
% b = b / 1e7; % 将 b 的值转换为 10^7 的形式
% plot(x, b, '-or'); % 线性，颜色，标记
% axis([0, 20, 0.4, 1.4]) % 确定x轴与y轴框图大小
% set(gca, 'XTick', [0,5,10,15,20]) % x轴范围0-20，间隔5
% set(gca, 'YTick', 0.2:0.2:1.4) % y轴范围0-1，间隔0.2
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('the number of iteratins', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Converage', 'FontSize', fontSizey); % y轴坐标描述
% title('Mirflickr', 'FontSize', fontSizex);
% pbaspect([2 1 1]);
% % 添加 10^7 注释
% ax = gca;
% text(ax.XLim(1)+0.5, ax.YLim(2)+0.05, 'x 10^7', 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');



% x = 1:1:20; % x轴上的数据
% b = [8611182.120228, 3038825.098300, 3017513.025371, 2882108.698548, 2745057.568186, 2617438.442070, 2508944.003084, 2419756.102713,2345507.493858,2308793.642202,2330416.099866,2287994.155092,2240989.933701,2202917.939241,2179627.569799,2168521.654507,2165940.307542,2169721.724906,2178480.890118,2189297.110050]; 
% b = b / 1e7; % 将 b 的值转换为 10^7 的形式
% % 使用 interp1 插值
% xx = linspace(min(x), max(x), 1000); % 生成更多的 x 值以获得平滑的曲线
% bb = interp1(x, b, xx, 'spline'); % 使用 spline 插值
% plot(xx, bb, '-or', 'MarkerIndices', 1:50:length(xx)); % 曲线，颜色，标记
% axis([0, 20, 0.2, 1]) % 确定x轴与y轴框图大小
% set(gca, 'XTick', [0,5,10,15,20]) % x轴范围0-20，间隔5
% set(gca, 'YTick', 0.2:0.2:1) % y轴范围0-1，间隔0.2
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('the number of iteratins', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Converage', 'FontSize', fontSizey); % y轴坐标描述
% title('Espgame', 'FontSize', fontSizex);
% pbaspect([2 1 1]);
% % 添加 10^7 注释
% ax = gca;
% text(ax.XLim(1)+0.5, ax.YLim(2)+0.05, 'x 10^7', 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% % Mirflickr 的收敛性分析图
% x = 1:1:20; % x轴上的数据
% b = [12119935.645094, 6521536.758972, 6477079.991881, 6139118.695953, 5731813.455952, 5466623.593973, 5301672.181724, 5195416.861538,5091900.994786, 5065846.432373, 5044283.462027,5025277.565261,5007373.772322,4989981.848598,4974472.671746,4943188.230237,4922254.152323,4922179.600368,4921633.921009,4917154.569953]; 
% b = b / 1e7; % 将 b 的值转换为 10^7 的形式
% 
% % 使用 interp1 插值
% xx = linspace(min(x), max(x), 1000); % 生成更多的 x 值以获得平滑的曲线
% bb = interp1(x, b, xx, 'spline'); % 使用 spline 插值
% 
% plot(xx, bb, '-or', 'MarkerIndices', 1:50:length(xx)); % 曲线，颜色，标记
% axis([0, 20, 0.4, 1.4]) % 确定x轴与y轴框图大小
% set(gca, 'XTick', [0,5,10,15,20]) % x轴范围0-20，间隔5
% set(gca, 'YTick', 0.2:0.2:1.4) % y轴范围0-1.4，间隔0.2
% fontSizey=14;
% fontSizex = 24; % 你可以根据需要调整这个值
% % 设置坐标轴描述的字体大小
% xlabel('the number of iterations', 'FontSize', fontSizex); % x轴坐标描述
% ylabel('Convergence', 'FontSize', fontSizey); % y轴坐标描述
% title('Mirflickr', 'FontSize', fontSizex);
% pbaspect([2 1 1]);
% % 添加 10^7 注释
% ax = gca;
% text(ax.XLim(1)+0.5, ax.YLim(2)+0.05, 'x 10^7', 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');


% 示例数据
% methods = {'Method A', 'Method B', 'Method C', 'Method D', 'Method E'};
% avg_ranks = [2.5, 1.5, 4.5, 3.5, 5];
% 
% % 计算Critical Difference (CD)
% N = 6;  % 数据集的数量
% alpha = 0.05; % 显著性水平
% q_alpha = 2.569;  % 对应alpha=0.05的q值（这个值可能会根据您的需求和表格而变化）
% CD = q_alpha * sqrt((5*(5+1))/(6*6));
% 
% % 绘制CD图
% [sorted_ranks, sorted_idx] = sort(avg_ranks);  % 按平均排名排序
% sorted_methods = methods(sorted_idx);
% 
% figure;
% hold on;
% 
% % 绘制每个算法的平均排名
% for i = 1:length(sorted_ranks)
%     plot(sorted_ranks(i), i, 'bo', 'MarkerSize', 10);
% end
% 
% % 用红线表示CD
% best_rank_idx = find(avg_ranks == min(avg_ranks));
% plot([avg_ranks(best_rank_idx), avg_ranks(best_rank_idx) + CD], [best_rank_idx, best_rank_idx], 'r-', 'LineWidth', 2);
% 
% hold off;
% ylim([0, length(methods)+1]);
% set(gca, 'YTick', 1:length(methods), 'YTickLabel', sorted_methods, 'YDir', 'reverse');  % 设置y轴的标签
% xlabel('Average Rank');
% title('Critical Difference (CD) Diagram');
% grid on;


