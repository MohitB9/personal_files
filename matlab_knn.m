load fisheriris
x = meas(:,3:4);
newpoint = [5 1.45];
k = 3;
%// Use Euclidean
dists = sqrt(sum(bsxfun(@minus, x, newpoint).^2, 2));
[d,ind] = sort(dists);
ind_closest = ind(1:k);
x_closest = x(ind_closest,:);



x1 = randi([0 10],2,20);
y1 = randi([12 20],2,20);
c = [x1'; y1'];
np=[0 0];
k = 5;
%// Use Euclidean
dists = sqrt(sum(bsxfun(@minus, c, np).^2, 2));
[d,ind] = sort(dists);
ind_closest = ind(1:k)
x_closest = c(ind_closest,:)


scatter(x1(1,:),x1(2,:))
hold on
sz = 140;
scatter(y1(1,:),y1(2,:),sz,'d')

