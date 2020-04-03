 load dbCHUCK.mat;
 load predictedLabelCHUK.mat;
    for r=1:size(dbCHUCK)
       k(r,:)=r; 
    end
    count=0;
    for a =1:size(k)
    if (k(a,:)==predictedLabelCHUK(a,:))
        count=count+1;
    end
    end
    accuracyCHUK=count/a;
    