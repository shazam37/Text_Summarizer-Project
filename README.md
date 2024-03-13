# Text_Summarizer-Project

Dialogues play a pivotal role whether in reel or real life. From Shakespereans dramas to the common people ranting about their lives, or from celebrity gosips to romantic conversations, we can witness plenty of dialogues in our everyday lives. Every dialogue is centered around a theme and mostly ends with some sort of a conclusion. If somebody goes on about analysing such dialogues as a part of their study or any public investigation, then it can become cumbersome especially if the count is high or the dialogues are lengthy. We will certainly wish for an assistant to help us summarise those dialgoues. Some 10 years back, nobody would have believed that such a specific assistant is possible. But the rise of Large Language Models (LLMs) have eventually made it possible. 

LLMs are the current state of the art Natural Language Processing (NLP) models that are trained on TeraBytes of text data scraped from all over the internet. They can be trained for multiple tasks like language translation, sentiment analysis, chat-bots, etc. Such a gigantic model needs whole lot of resource and computation to train, the cost of which can only be endured by big organizations. The best part is that most of these organizations open source their trained models for everyone to use. 

Google's PEGASUS (Pre-training with Extracted Gap-sentences for Abstractive Summarization Sequence-to-sequence models) is one such open-source LLM trained on summarising a piece of dialogue or text data. You can find the paper here: https://arxiv.org/abs/1912.08777

![pegasus](https://github.com/shazam37/Text_Summarizer-Project/assets/119686545/22886b1d-7862-429e-83c7-f94e0ca4b0a7)
The pegasus logo is named after a greek mythological character by the same name

Its a transformer encoder-decoder model that can be fine tuned with any custom data. We can get one such custom dataset called SAMSUM from HuggingFace dataset library. It contains the text data of dialogue between two people and its summary as a label. We check for any redundancy in the dataset and clean it appropriately. We then tokenize both the dialogues and their summaries and use them to fine-tune the model. Its as simple as that!

We measure the performance of our model using a quantity called ROUGE (The Recall-Oriented Understudy for Gisting Evaluation) scoring algorithm. It evaluates the similarity between a candidate document and a collection of reference documents. In our context, it measures the similarity between the actual summary and the generated summary for every dialogue. Its value ranges between 0 and 1. A ROUGE score close to 0 indicates poor similarity between candidate and references whereas a ROUGE score close to 1 indicates strong similarity between candidate and references. ROUGE scores are branched into ROUGE-N, ROUGE-L, and ROUGE-S. ROUGE-N measures the overlap of n-grams (contiguous sequences of n words) between the candidate text and the reference text. ROUGE-1 measures the overlap of unigrams (each word) between the system and reference summaries. ROUGE-2 measures the overlap of bigrams between the system and reference summaries. 

It can be simply understood as:

![rouge](https://github.com/shazam37/Text_Summarizer-Project/assets/119686545/90d5885b-a341-460b-aeb2-e92fb56ae697)

My trained model achieved a ROUGE score of around 0.6 in all the three metrics (which is considered a good score). The entire application was built following proper MLOPs worklfow and FAST-API.t is even ready to be deployed on Azure with the help of Docker. You can download the requirements and run the app.py to host an instance of FLASK-API. The app interface is divided into train and predict

The training interface allows you to train the model in one click: 

![Screenshot from 2024-03-13 22-20-24](https://github.com/shazam37/Text_Summarizer-Project/assets/119686545/d196a4a1-34b9-4b06-b056-22f431334dfe)

The prediction interface requires a text to summarize:

![Screenshot from 2024-03-13 22-20-44](https://github.com/shazam37/Text_Summarizer-Project/assets/119686545/317b9a87-a383-4428-844f-524bd6e12eec)

Lets say we give a dialogue between two guys Eric and Rob:

Eric: MACHINE! 
Rob: That's so gr8!
Eric: I know! And shows how Americans see Russians ;) 
Rob: And it's really funny!
Eric: I know! I especially like the train part!
Rob: Hahaha! No one talks to the machine like that!
Eric: Is this his only stand-up? 
Rob: Idk. I'll check.
Eric: Sure.
Rob: Turns out no! There are some of his stand-ups on youtube.
Eric: Gr8! I'll watch them now!
Rob: Me too! 
Eric: MACHINE!
Rob: MACHINE!
Eric: TTYL?
Rob: Sure :)

We giev this as a text:

![Screenshot from 2024-03-13 22-21-26](https://github.com/shazam37/Text_Summarizer-Project/assets/119686545/cb4152f6-7171-41ca-903b-0a308e71f7b1)

And we get the response:

![Screenshot from 2024-03-13 22-21-47](https://github.com/shazam37/Text_Summarizer-Project/assets/119686545/33d1e830-e52b-4cbe-9de9-902a0e2dc67e)

Isn't it marvellous how well the model has understood the context and summarised the dialogue! Thats the power of LLMs. Even though we trained it on a low amount of data, but still it has learnt enough owing to its exhaustive pretraining. Likewise, we can utilise other such open source LLMs built for serving different tasks. Regardless of the application, the fundamentals and code pipeline essentially remains the same.





