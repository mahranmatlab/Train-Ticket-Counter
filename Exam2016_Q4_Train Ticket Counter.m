clear;
clc;
seats_p1=zeros(1,10);
seats_p2=zeros(1,10);
index1=1;
index2=1;
sum1=1;
sum2=1;
counter1=0;
counter2=0;
counter3=counter1+counter2;
for c=1:300
    if counter3==20
        break;
    end
    if sum1==11 && sum2==11
        disp('Both Planes 1&2 to "ASWAN" & "ALEXANDRIA" are full');
        break;
    elseif sum1==11
        disp('Plane 1 to "ASWAN" is full');
        destination=input('please type 2 for "ALEXANDRIA"');
    elseif sum2==11
        disp('Plane 2 to "ALEXANDRIA" is full');
        destination=input('Please type 1 for "ASWAN"');
    elseif sum1<11 && sum2<11
        destination=input('Please type 1 for "ASWAN" and please type 2 for "ALEXANDRIA"');
    end
    if destination < 1 || destination > 2
        disp('Please type 1 or 2 only');
        destination=input('Please type 1 for "ASWAN" and please type 2 for "ALEXANDRIA"');
    elseif destination==1 && sum1<11
        seats_p1(index1)=1;
        counter1=counter1+1;
        sum1=sum1+1;
        disp(['your ticket is to "ASWAN" : FLIGHT 10am - PLANE 1 - SEAT ',num2str(index1)]);
        index1=index1+1;
    elseif destination==2 && sum2<11
        seats_p2(index2)=1;
        counter2=counter2+1;
        sum2=sum2+1;
        disp(['your ticket is to "ALEXANDRIA" : FLIGHT 11am - PLANE 2 - SEAT ',num2str(index2)]);
        index2=index2+1;
    end
    if sum1==11
        disp('Plane 1 to "ASWAN" Next flight leaves in 3 hours (10 am)');
    end
    if sum2==11
        disp('Plane 2 to "ALEXANDRIA" Next flight leaves in 3 hours (11 am)');
    end
end