featuresCount=1;
for i=1:size(im,2)
    for j=1:im(i).Count
        features1(featuresCount,:)=extractHOGFeatures(im);
        label1{featuresCount}= i(i).Description;
        featuresCount = featuresCount+1;
    end
    personIndex{i}=ABC(i).Description;
end