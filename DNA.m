close all
clear all 
clc
%A�a��daki s�radaki 11 taban�n t�m palindromlar�n� tan�mlayan bir program olu�turun.
%Print these palindromes and their sequence positions.
seq='CCTGATCATCCACGGGGGACCCCCCAGTCGTACGTAGCTTGGGGGCCCCCAGCATACGTACGATCGCCCACAGTGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACATGCTACGATCGA';
    'TCGATCGATCGATCGATCGATCGATCGTAGTCAGTATTTGTGTGCAGCATGCACAGTCGATCGATCGTGTCGTACCCCCCCCCTCCCCCCCCCCTCCCCCCCTACGTAGCTACGTACGATCGATCG';
for i = 6 : length(seq) - 5
%Checking if subsequence is a palindrome
 n_match = 0;
  for i_p = 1 : 5
    if seq(i - i_p) == 'A' && seq(i + i_p) == 'T' || ...
       seq(i - i_p) == 'T' && seq(i + i_p) == 'A' || ...
       seq(i - i_p) == 'C' && seq(i + i_p) == 'G' || ...
       seq(i - i_p) == 'G' && seq(i + i_p) == 'C'
       n_match = n_match + 1;
    else 
      break;
    end
  end
%If palindrome then displaying its sequence and position
  if n_match == 5
    pal = seq(i - 5 : i + 5);
    disp(pal)
    disp([i - 5, i + 5])
  end
end
disp ('---------------------------------------------------------------------')


%7 ve 21 aras�nda de�i�en boyutlarda palindromlar� bulmak i�in �nceki program� nas�l de�i�tirebiliriz?
seq='CCTGATCATCCACGGGGGACCCCCCAGTCGTACGTAGCTTGGGGGCCCCCAGCATACGTACGATCGCCCACAGTGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACATGCTACGATCGA';
    'TCGATCGATCGATCGATCGATCGATCGTAGTCAGTATTTGTGTGCAGCATGCACAGTCGATCGATCGTGTCGTACCCCCCCCCTCCCCCCCCCCTCCCCCCCTACGTAGCTACGTACGATCGATCG';
tic
for m = 7:2:21 
   for i = (m+1)/2 :length(seq) - (m-1)/2
    
    %Checking if subsequence is a palindrome 
    n_match = 0;
      for i_p = 1 : 10 
            if seq(i - i_p) == 'A' && seq(i + i_p) == 'T' || ...
               seq(i - i_p) == 'T' && seq(i + i_p) == 'A' || ... 
               seq(i - i_p) == 'C' && seq(i + i_p) == 'G' || ... 
               seq(i - i_p) == 'G' && seq(i + i_p) == 'C'
               n_match = n_match + 1; 
            else
            break; 
            end
      end
         %If palindrome then displaying its sequence and position
          if n_match == (m-1)/2
             pal = seq(i - (m-1)/2 : i + (m-1)/2);
             disp(pal)
             disp([i - (m-1)/2, i + (m-1)/2])
          end
   end
end
toc