clear all
Vp=.5:.05:1;
Vn=0.1:0.02:0.32;
P=.3164;
Q=sqrt(1-P^2);
Q=0.7;

for i=1:11
    for j=1:12
        iBPSC(i,j)=1/Vp(i);
        iICPS(i,j)=1/(Vp(i)-Vn(j));
        V2(i,j)=Vp(i)+Vn(j);
        V1(i,j)=Vp(i)-Vn(j);
        iPNSC1(i,j)=sqrt(P^2*V2(i,j)^2+Q^2*V1(i,j)^2)/(Vp(i)^2-Vn(j)^2);
        iPNSC2(i,j)=sqrt(V2(i,j)^2*(P/2+sqrt(3)*Q/2)^2+V1(i,j)^2*(sqrt(3)*P/2+Q/2))/(Vp(i)^2-Vn(j)^2);
        iPNSC(i,j)=max(iPNSC1(i,j),iPNSC2(i,j)); 
    end
end
iPNSC(4,12)
figure
surf(Vn,Vp,iBPSC)
hold on
surf(Vn,Vp,iICPS)
hold on
ylim([0.5 1])
xlim([0.1 .3])
surf(Vn,Vp,iPNSC)
title('S=1 p.u.')
grid on