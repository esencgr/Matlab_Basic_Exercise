%fibonaccinin 0,1,2,3 gibi indeklerinden ka��nc�s�nda ne de�er var ?

function num = fibrec(index) 

if index <= 1 
    num = 1; 
    return; 
end
num = fibrec(index - 1) + fibrec(index - 2);