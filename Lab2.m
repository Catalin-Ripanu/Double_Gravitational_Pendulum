clc
clear                                    
dt=0.01;
T=10;                                                           
N=int16(T/dt);
                                                            
tl1=zeros(N,1);  %unghiul corpului 1 (pendul dublu I)
                                                           
al1=zeros(N,1);  %unghiul corpului 1(pendul dublu II)

bl1=zeros(N,1);  %unghiul corpului 1(pendul dublu III)
                                                           
tl2=zeros(N,1);  %unghiul corpului 2 (pendul dublu I)
                                                                
al2=zeros(N,1);  %unghiul corpului 2 (pendul dublu II)

bl2=zeros(N,1);  %unghiul corpului 2 (pendul dublu III)

tld1=zeros(N,1);  %viteza corpului 1 (pendul dublu I)

ald1=zeros(N,1);  %viteza corpului 1 (pendul dublu II)

bld1=zeros(N,1);  %viteza corpului 1 (pendul dublu III)

tld2=zeros(N,1);  %viteza corpului 2 (pendul dublu I)

ald2=zeros(N,1);  %viteza corpului 2 (pendul dublu II)

bld2=zeros(N,1);  %viteza corpului 2 (pendul dublu III)

tldd1=zeros(N,1);

aldd1=zeros(N,1);

bldd1=zeros(N,1);

tldd2=zeros(N,1);

aldd2=zeros(N,1); 

bldd2=zeros(N,1);

X1=zeros(N,1);  

Y1=zeros(N,1);   

Z1=zeros(N,1); 

D1=zeros(N,1);    

X2=zeros(N,1);    
  
Y2=zeros(N,1);   
                      
Z2=zeros(N,1);   
       
D2=zeros(N,1);

E1=zeros(N,1);    
  
F1=zeros(N,1);   
                      
E2=zeros(N,1);   
       
F2=zeros(N,1);  
         
figure;     
        
hold off;    
        
tl1(1)=pi/2;     
                                                                                 
al1(1)=pi/2;

bl1(1)=pi/2;     
       
tl2(1)=pi+1.02;    
        
al2(1)=pi+0.025;

bl2(1)=pi+0.05;

tld1(1)=0;

ald1(1)=0;

bld1(1)=0;

tld2(1)=0;

ald2(1)=0;

bld2(1)=0;

g=9.80665;

A=-2*g*sin(tl1(1))-sin(tl1(1)-tl2(1))*tld2(1)^2;

J=-2*g*sin(al1(1))-sin(al1(1)-al2(1))*ald2(1)^2;

P=-2*g*sin(bl1(1))-sin(bl1(1)-bl2(1))*bld2(1)^2;

B=-g*sin(tl2(1))+sin(tl1(1)-tl2(1))*tld1(1)^2;

K=-g*sin(al2(1))+sin(al1(1)-al2(1))*ald1(1)^2;

U=-g*sin(bl2(1))+sin(bl1(1)-bl2(1))*bld1(1)^2;

tldd1(1)=(A-B*cos(tl1(1)-tl2(1)))/(2-(cos(tl1(1)-tl2(1)))^2);

aldd1(1)=(A-B*cos(al1(1)-al2(1)))/(2-(cos(al1(1)-al2(1)))^2);

bldd1(1)=(A-B*cos(bl1(1)-bl2(1)))/(2-(cos(bl1(1)-bl2(1)))^2);

tldd2(1)=B-cos(tl1(1)-tl2(1))*tldd1(1);

aldd2(1)=B-cos(al1(1)-al2(1))*aldd1(1);

bldd2(1)=B-cos(bl1(1)-bl2(1))*bldd1(1);

X1(1)=sin(tl1(1));

Y1(1)=cos(tl1(1));

D1(1)=sin(al1(1));

Z1(1)=cos(al1(1));

E1(1)=sin(bl1(1));

F1(1)=cos(bl1(1));

X2(1)=sin(tl1(1))+sin(tl2(1));

Y2(1)=cos(tl1(1))+cos(tl2(1));

D2(1)=sin(al1(1))+sin(al2(1));

Z2(1)=cos(al1(1))+cos(al2(1));

E2(1)=sin(bl1(1))+sin(bl2(1));

F2(1)=cos(bl1(1))+cos(bl2(1));

for i=2:N
    tld1(i)=tld1(i-1)+dt*tldd1(i-1);
    
    ald1(i)=ald1(i-1)+dt*aldd1(i-1);
    
    bld1(i)=bld1(i-1)+dt*bldd1(i-1);
    
    tld2(i)=tld2(i-1)+dt*tldd2(i-1);
    
    ald2(i)=ald2(i-1)+dt*aldd2(i-1);
    
    bld2(i)=bld2(i-1)+dt*bldd2(i-1);
    
    tl1(i)=tl1(i-1)+dt*tld1(i);
    
    al1(i)=al1(i-1)+dt*ald1(i);
    
    bl1(i)=bl1(i-1)+dt*bld1(i);
    
    tl2(i)=tl2(i-1)+dt*tld2(i);
    
    al2(i)=al2(i-1)+dt*ald2(i);
    
    bl2(i)=bl2(i-1)+dt*bld2(i);
    
    A=-2*g*sin(tl1(i))-sin(tl1(i)-tl2(i))*tld2(i)^2;
    
    J=-2*g*sin(al1(i))-sin(al1(i)-al2(i))*ald2(i)^2;
    
    P=-2*g*sin(bl1(i))-sin(bl1(i)-bl2(i))*bld2(i)^2;
    
    B=-g*sin(tl2(i))+sin(tl1(i)-tl2(i))*tld1(i)^2;
    
    K=-g*sin(al2(i))+sin(al1(i)-al2(i))*ald1(i)^2;
    
    U=-g*sin(bl2(i))+sin(bl1(i)-bl2(i))*bld1(i)^2;
    
    tldd1(i)=(A-B*cos(tl1(i)-tl2(i)))/(2-(cos(tl1(i)-tl2(i)))^2);
    
    aldd1(i)=(J-K*cos(al1(i)-al2(i)))/(2-(cos(al1(i)-al2(i)))^2);
    
    bldd1(i)=(P-U*cos(bl1(i)-bl2(i)))/(2-(cos(bl1(i)-bl2(i)))^2);
    
    tldd2(i)=B-cos(tl1(i)-tl2(i))*tldd1(i);
    
    aldd2(i)=K-cos(al1(i)-al2(i))*aldd1(i);
    
    bldd2(i)=U-cos(bl1(i)-bl2(i))*bldd1(i);
    
    X1(i)=sin(tl1(i));
    
    D1(i)=sin(al1(i));
    
    E1(i)=sin(bl1(i));
    
    Y1(i)=cos(tl1(i));
    
    Z1(i)=cos(al1(i));
    
    F1(i)=cos(bl1(i));
    
    X2(i)=sin(tl1(i))+sin(tl2(i));
    
    D2(i)=sin(al1(i))+sin(al2(i));
    
    E2(i)=sin(bl1(i))+sin(bl2(i));
    
    Y2(i)=cos(tl1(i))+cos(tl2(i));
    
    Z2(i)=cos(al1(i))+cos(al2(i));
    
    F2(i)=cos(bl1(i))+cos(bl2(i));
    
    plot([0, X1(i), X2(i)], [0, -Y1(i), -Y2(i)],'-o');
    
    hold on
    
    plot([0, D1(i), D2(i)], [0, -Z1(i), -Z2(i)],'-o');
    
    hold on
    
    plot([0, E1(i), E2(i)], [0, -F1(i), -F2(i)],'-o');
    
    axis([-2 2 -2 2]);
    
    title(['t = ', num2str(double(i)*dt, '% 5.3f'), ' s']);
    
    hold on
    
    plot(X2(1:i), -Y2(1:i), 'k');
    
    plot(D2(1:i), -Z2(1:i), 'g');
    
    plot(E2(1:i), -F2(1:i), 'c');
    
    hold off
    
    drawnow;
end
