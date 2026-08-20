filename = "C:\Users\Saqib\Documents\phd\sem2\exp\text.csv";
tbl = readtable(filename,'TextType','string');
head(tbl)
str = tbl.text;
documents = tokenizedDocument(str);
documents(1:5)
compoundScores = vaderSentimentScores(documents);
idx = compoundScores > 0;
strPositive = str(idx);
strNegative = str(~idx);
subplot(1,2,1)
wordcloud(strPositive);
title("Positive Sentiment")
subplot(1,2,2)
wordcloud(strNegative);
title("Negative Sentiment")
