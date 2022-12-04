close all;
clear all;
clc;
M = [1:1:20];

%% mail loop 
SIC_coopNoma1 = 0;
for m = 1:length(M)
    SIC_coopNoma2 = 0; 
    for j =0: (m-2)
         SIC_coopNoma = 0;
        for i =1: (m-1-j)
            SIC_coopNoma = SIC_coopNoma + ( m-(i + j )) ;
            SIC_coopNoma = SIC_coopNoma ;
        end
   SIC_coopNoma2 =  SIC_coopNoma2 + SIC_coopNoma;
   SIC_coopNoma2 =SIC_coopNoma2 ;
    end
    SIC_coopNoma1(m) = SIC_coopNoma2 ; 
end
%% PLOT 
 %clr=['k->';'r-*'; 'g-o'];
figure(1)
    plot([1:length(M)],SIC_coopNoma1,'-+');%,'MarkerSize',2); 
    grid on
    hold on
   
%     SIC_STBCcoopNoma = 0;
%     
% for m=1:length(M)
%      SIC_STBCcoopNoma = 0;
%     for user_ind=1:m-1
%       
%        SIC_STBCcoopNoma = SIC_STBCcoopNoma + ( m-(user_ind )) ;
%        %SIC_STBCcoopNoma(user_ind) = SIC_STBCcoopNoma ; 
%        SIC_STBCcoopNoma = SIC_STBCcoopNoma  ; 
%     end
%     SIC_STBCcoopNoma1(m) = SIC_STBCcoopNoma;
% end
% plot([1:length(M)],SIC_STBCcoopNoma1,'-*r');%,'MarkerSize',2); 
% grid on
% hold on 
%  SIC_Noma = 0;
%     
% for m=1:(length(M))
%       
%       SIC_Noma = SIC_Noma + m-1 ;
%       SIC_Noma = SIC_Noma  ; 
%       SIC_Noma1(m) = SIC_Noma;
% end
% plot([1:length(M-1)],SIC_Noma1,'->');%,'MarkerSize',2); 
grid on
hold on


SIC_stbcNoma = 0;
    
for m=1:(length(M)-(length(M)-m))
      
      SIC_stbcNoma = SIC_stbcNoma + m-1 ;
      SIC_stbcNoma = SIC_stbcNoma  ; 
      SIC_stbcNoma1(m) = SIC_stbcNoma;
end
plot([1:length(M)],SIC_stbcNoma1,'-k');%,'MarkerSize',2); 
grid on
hold on

%============CRS-STBC-NOMA========
grid on
hold on 
SIC_CRS_STBC_NOMA = 0;
    
for m=1:(length(M))
      
      SIC_CRS_STBC_NOMA = SIC_CRS_STBC_NOMA + 4*m ;
      SIC_CRS_STBC_NOMA = SIC_CRS_STBC_NOMA  ; 
      SIC_CRS_STBC_NOMA1(m) = SIC_CRS_STBC_NOMA;
end
plot([1:length(M-1)],SIC_CRS_STBC_NOMA1,'->');%,'MarkerSize',2);
%============CRS-NOMA========
grid on
hold on 
SIC_CRS_NOMA = 0;
    
for m=1:(length(M))
      
      SIC_CRS_NOMA = SIC_CRS_NOMA + m ;
      SIC_CRS_NOMA = SIC_CRS_NOMA  ; 
      SIC_CRS_NOMA1(m) = SIC_CRS_NOMA;
end
plot([1:length(M-1)],SIC_CRS_NOMA1,'-.');%,'MarkerSize',2);
%============CRS-NOMA-ND========
grid on
hold on 
SIC_CRS_NOMA_ND = 0;
    
for m=1:(length(M))
      
      SIC_CRS_NOMA_ND = SIC_CRS_NOMA_ND + 2*m ;
      SIC_CRS_NOMA_ND = SIC_CRS_NOMA_ND  ; 
      SIC_CRS_NOMA_ND1(m) = SIC_CRS_NOMA_ND;
end
plot([1:length(M-1)],SIC_CRS_NOMA_ND1,'--<');%,'MarkerSize',2);
legend(' Conv. Coop-NOMA','STBC-CNOMA ','CRS-STBC-NOMA ','CRS-NOMA ','CRS-NOMA-ND ','location','best');

xlabel('Total Number of users(K)');
ylabel('No. of SICs Performed');
