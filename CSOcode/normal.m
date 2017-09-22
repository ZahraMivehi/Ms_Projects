load('dataset.mat')
datasetmax(1:9)=0;
datasetmin(1:9)=0;
for c=1:9
    datasetmax(1,c)=max(dataset(:,c));
    datasetmin(1,c)=min(dataset(:,c));
  	p=datasetmax(1,c)-datasetmin(1,c);
    if (c==1 ||  c==8)
    for r=1:2507
                 datasetnormal(r,c)= (datasetmax(1,c)-dataset(r,c))/p;
    end
    else
       for r=1:2507
                datasetnormal(r,c)= (dataset(r,c)-datasetmin(1,c))/p;
       end

    end
end
datasetnormal(1:2507,10)=sum(datasetnormal,2);