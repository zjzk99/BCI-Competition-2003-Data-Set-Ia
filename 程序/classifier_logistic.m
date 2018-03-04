%%%%%%%%%% classifier %%%%%%%%%%

function a=classifier_logistic(testData, weights)
    prob = logistic (sum(testData*weights));
    if prob >0.5
        label_test=0;
    else
        label_test=1;
    end