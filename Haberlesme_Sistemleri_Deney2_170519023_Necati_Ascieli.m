
x=input('Enter the digital sequence'); %Kullanıcıdan data verisi almak için bu komutu kullandım.
N=length(x); %Girilen data verisinin uzunluğunu belirleyen fonksiyon.
t=0.01:0.01:N; %0'dan N'e kadar olan zaman aralığını tanıttım.
c=2*sin(10*pi*t); %Taşıyıcı sinyali belirttim.

for i=1:1:N %For döngüsü ile oluşan vektörleri darbe sinyaline çevirdim.
    m((i-1)*100+1:i*100)=x(i);

end
y=c.*m;
subplot(3,1,1); %Bir pencere üzerinde birden fazla komut çalıştırabilmek adına subplot komutunu kullandım.
plot(t,m);
xlabel('time');
ylabel('amplitude');
title('Data Signal');
axis([0 N -0.5 1.5]);
subplot(3,1,2);
plot(t,c);
xlabel('time');
ylabel('amplitude');
title('Carrier Sinus Signal');
subplot(3,1,3);
plot(t,y);
xlabel('time');
ylabel('amplitude');
title('Modulated Signal');

%Necati Aşçıeli 170519023 


