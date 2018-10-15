%fibonaccinin 0,1,2,3 gibi indeklerinden kaçýncýsýnda ne deðer var ?

function num = fibrec(index) 

if index <= 1 
    num = 1; 
    return; 
end
num = fibrec(index - 1) + fibrec(index - 2);