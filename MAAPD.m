Vp=0.8*1.077;
Vn=0.18;
V1=Vp-Vn;
V2=Vp+Vn;
Q=2*(1-Vp)
Pnormal=sqrt(1-Q^2)

Ilimit=[1 1.2]
P_BPSC=sqrt(Ilimit.^2*Vp^2-Q^2)
P_ICPS=sqrt(Ilimit.^2*V1^2-Q^2)
P_PNSC1=sqrt(Ilimit.^2*(Vp^2-Vn^2)^2-Q^2*V1^2)/V2;
a=3*V1^2+V2^2;
b=2*sqrt(3)*Q*(V1^2+V2^2);
c=Q^2*(V1^2+3*V2^2)-4*Ilimit.^2*(Vp^2-Vn^2)^2;
P_PNSC2=(-b+sqrt(b^2-4*a*c))/2/a;
P_PNSC(1)=min(P_PNSC1(1),P_PNSC2(1));
P_PNSC(2)=min(P_PNSC1(2),P_PNSC2(2))

