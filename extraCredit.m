## Copyright (C) 2019 HP
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} input1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: HP <HP@DESKTOP-8INP6G1>
## Created: 2019-02-01

function extraCredit()
m11=0; 

##taking input

v=input("F(A,B,C,D)=");           
v=unique(v);
 b1=zeros(4);
  a1=0;
  a8=0;
z=length(v);
w=[-1 -1 -1 -1];

##checking for correct input

for(a11=1:length(v))
if(v(a11)==1||v(a11)==2||v(a11)==3||v(a11)==4||v(a11)==5||v(a11)==6||v(a11)==7||v(a11)==8||v(a11)==9||v(a11)==10||v(a11)==11||v(a11)==12||v(a11)==0||v(a11)==13||v(a11)==14||v(a11)==15)
else
m11++;
end
end

##if input is correct

if(m11==0)

##Printing k-map

for(i=1:z)
if(v(i)==0)
b1(1)=1;
end
if(v(i)==1)
b1(5)=1;
end
if(v(i)==2)
b1(13)=1;
end
if(v(i)==3)
b1(9)=1;
end
if(v(i)==4)
b1(2)=1;
end
if(v(i)==5)
b1(6)=1;
end
if(v(i)==6)
b1(14)=1;
end
if(v(i)==7)
b1(10)=1;
end
if(v(i)==8)
b1(4)=1;
end
if(v(i)==9)
b1(8)=1;
end
if(v(i)==10)
b1(16)=1;
end
if(v(i)==11)
b1(12)=1;
end
if(v(i)==12)
b1(3)=1;
end
if(v(i)==13)
b1(7)=1;
end
if(v(i)==14)
b1(15)=1;
end
if(v(i)==15)
b1(11)=1;
end
end
printf("\n");
disp(" entered k-map");
disp(b1);
printf("\n");
disp(" simplified expression is: ");

## solving when input is not equal to all possible values

if(length(v)<16)
for(i=1:z)
if(v(i)==0)
w=[w;[0 0 0 0]];
elseif(v(i)==1)
w=[w;[0 0 0 1]];
elseif(v(i)==2)
w=[w;[0 0 1 0]];
elseif(v(i)==3)
w=[w;[0 0 1 1]];
elseif(v(i)==4)
w=[w;[0 1 0 0]];
elseif(v(i)==5)
w=[w;[0 1 0 1]];
elseif(v(i)==6)
w=[w;[0 1 1 0]];
elseif(v(i)==7)
w=[w;[0 1 1 1]];
elseif(v(i)==8)
w=[w;[1 0 0 0]];
elseif(v(i)==9)
w=[w;[1 0 0 1]];
elseif(v(i)==10)
w=[w;[1 0 1 0]];
elseif(v(i)==11)
w=[w;[1 0 1 1]];
elseif(v(i)==12)
w=[w;[1 1 0 0]];
elseif(v(i)==13)
w=[w;[1 1 0 1]];
elseif(v(i)==14)
w=[w;[1 1 1 0]];
elseif(v(i)==15)
w=[w;[1 1 1 1]];
end
end

u=[-1 -1 -1 -1];
m=[-1];
j=1;
c1=1;
c2=1;
c3=1;
c4=1;
while(j>0&&(c1~=0||c2~=0||c3~=0||c4~=0))
m=[-1];
c1=0;
c2=0;
c3=0;
c4=0;

s=size(w,1);
for(i=2:(s-1))
if(s>=3)
for(o=(i+1):s)
if(s>=(i+1))

if(w(i,1:3)==w(o,1:3)&&w(i,4)!=w(o,4)&&w(i,4)!=-1&&w(o,4)!=-1)
u=[u;[w(i,1:3) -1]];
m=[m;i;o];
c1++;

elseif(w(i,1:2)==w(o,1:2)&&w(i,4)==w(o,4)&&w(i,3)!=w(o,3)&&w(i,3)!=-1&&w(o,3)!=-1)
u=[u;[w(i,1:2) -1 w(i,4)]];
m=[m;i;o];
c2++;
elseif(w(i,3:4)==w(o,3:4)&&w(i,1)==w(o,1)&&w(i,2)!=w(o,2)&&w(i,2)!=-1&&w(o,2)!=-1)
u=[u;[w(i,1) -1 w(i,3:4)]];
m=[m;i;o];
c3++;
elseif(w(i,2:4)==w(o,2:4)&&w(i,1)!=w(o,1)&&w(i,1)!=-1&&w(o,1)!=-1)
u=[u;[-1 w(i,2:4)]];
m=[m;i;o];
c4++;
end 
end
end
end
end

for(f=2:s)
if(s>=2)
for(f2=2:length(m))
if(a1==0)
if(length(m)>=2)
if(f==m(f2))
a1++;
end
end
end
end
if(a1==0)
u=[u;w(f,:)];
end
a1=0;
end
end
w=u;
u=[-1 -1 -1 -1];
end

##taking care of multiple results(same values)

for(r1=2:size(w,1)-1)
for(r2=r1+1:size(w,1))
if(w(r1,:)==w(r2,:))
w(r2,:)=[-1 -1 -1 -1];
end
end
end

##printing answer

for(q=2:size(w,1))
if(w(q,1)==0)
printf("A'");
a8++;
end
if(w(q,1)==1)
printf("A");
a8++;
end
if(w(q,2)==0)
printf("B'");
a8++;
end
if(w(q,2)==1)
printf("B");
a8++;
end
if(w(q,3)==0)
printf("C'");
a8++;
end
if(w(q,3)==1)
printf("C");
a8++;
end
if(w(q,4)==0)
printf("D'");
a8++;
end
if(w(q,4)==1)
printf("D");
a8++;
end
if(a8!=0)
printf("+");
end
a8=0;
end
printf("\b");
disp(" ");

##printing result when input values are equal to all possible values

else
disp("1");
end

##printin when values enteredare wrong

else
disp("wrong values are entered: (ERROR!)");
end
endfunction
