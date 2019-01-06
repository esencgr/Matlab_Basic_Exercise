A= rand (m,n)
A(2,:)=A(1,3).*(-1)
B= zeros (m,n)

for i=1:m
    for j=1:n
        if A(i,j)<0
            B(i,j)=A(i,j);
        end
    end
end
B ; 

B = zeros(m,n);
ind = A > 0
B(ind)=A(ind)
