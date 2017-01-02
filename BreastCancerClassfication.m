A = load('breast-cancer-wisconsin.data.txt');
Adata = A(:,2:end-1)';
benign = find(A(:,end)==2);
malignant = find(A(:,end)==4);
[U,S,V] = svd(Adata);
k = 3;
C = U(:,1:k)'*Adata; % C is a k x # patients matrix

plot(C(1,:),C(3,:),'bo'), hold on % to plot all the data coordinates
plot(C(1,benign),C(3,benign),'rx') % to mark the benign coordinates
plot(C(1,malignant),C(3,malignant),'cv') % to mark the malignant coordinates

