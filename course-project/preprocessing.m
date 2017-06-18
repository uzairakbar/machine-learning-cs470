clear;
clc;

load('ProjectData.mat')

for i=1:129
    Lo=LoCurve{1,i};
    ll(i)=length(Lo);
    Hi=HiCurve{1,i};
    hl(i)=length(Hi);
    for j=1:ll(i)
        com{i,j}=Lo(j);
    end
    for j=ll(i)+1:ll(i)+hl(i)
        k(i)=j-ll(i);
        com{i,j}=Hi(k(i));
    end
end

l=hl.*2;
drop=(l-min(l))/2;

for i=1:129
    for j=1:min(l)
        fin{i,j}=com{i,(j+(drop(i)))};
    end
    fin{i,min(l)+1}=ClassLabels(i);
end

save('PreprocessedData.mat', 'fin');