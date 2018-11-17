clear all
Va=0:0.1:1;
Vb=0:0.1:1;
Vc=0:0.1:1;
clear i
Vb=Vb*exp(-i*2*pi/3)
Vc=Vc*exp(i*2*pi/3)
a=exp(i*2*pi/3)
for i=0:10
    for j=0:10
        for k=0:10
            V0(121*i+11*j+k+1)=abs(1/3*(Va(i+1)+Vb(j+1)+Vc(k+1)));
            Vp(121*i+11*j+k+1)=abs(1/3*(Va(i+1)+a*Vb(j+1)+a^2*Vc(k+1)));
            Vn(121*i+11*j+k+1)=abs(1/3*(Va(i+1)+a^2*Vb(j+1)+a*Vc(k+1)));
        end
    end
end

plot(1:1331,V0)
hold on
plot(1:1331,Vp,'g')
hold on
plot(1:1331,Vn,'r')

n=Vn./Vp;
hold on
plot(1:1331,n,'b')
H=hist(n,20)
figure
plot(0:1/19:1,H)

