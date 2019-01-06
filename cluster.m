load fisheriris
euc_dist = pdist(meas,'euclidean');
size(euc_dist)
clust_tree_euc = linkage(euc_dist, 'average');
size(clust_tree_euc)

[h,nodes] = dendrogram(clust_tree_euc,0);

set(gca,'TickDir','out','TickLength',[.002 0], 'XTickLabel',[]);

hidx = cluster(clust_tree_euc,'MaxClust', 3);

for i = 1 : max(hidx)
    clust = find(hidx == i);
    plot3(meas(clust,1),meas(clust,2),meas(clust,3),ptsymb{i});
    hold on
end
    hold off
    xlabel('Sepal Length'); ylabel('Sepal Width'); zlabel('Petal Length');
    view(-137,10);
    grid on