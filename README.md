# MedApp : Automatic Medical Diagnosis 
This API is an endpoint for [MedApp](https://ephemeral-dusk-0ef28c.netlify.app/) in determining beforehand how a person is feeling and what are their symptoms without reading the whole description that the patient provides.

`process` endpoint serves as a link to the original MedApp to provide ailments classified according to the query.

Course: Natural Language Processing 
Technologies: NLP, NLTK, Machine Learning, Flask, Docker

**Related repositories: [MedApp](https://github.com/kartik-3513/MedApp)**

Note: This repository has been forked from [Harshit's backend-MedApp](https://github.com/TheGupta2012/backend-MedApp) and modified for a smaller use-case.


### Model
This API uses **Random Forest Classification** to classify a person's textual description into one of the many ailments present in the dataset. 

This dataset is currently limited to the following ailments:
> Emotional pain, Hair falling out, Head hurts, Infected wound, Foot achne, Shoulder pain, Injury from sports, Skin issue, Stomach ache, Knee pain, Joint pain, Hard to breath, Head ache, Body feels weak, Feeling dizzy, Back pain, Open wounds, Internal pain, Blurry vision, Acne, Muscle pain, Neck pain, Cough, Ear ache, Feeling cold

### Dataset
|  | Stemmed Phrase | Prompt |
|-------| ----------- | ----------- |
| 0 | when i rememb her i feel down | emotional pain
|1 | there is too much pain when i move my arm |heart hurts
| 2 | my son had his lip pierc and it is swollen and the skin insid on his lip is grey and look infect | infected wound |

### Query Structure 
- This API consists of one end point with the name **process** and two parameters `query` and `train`

 - **query** : This parameter is used to send the actual information to the API for processing and is of `string` type
    
- **train** : This is a quite different parameter for the API and its values denote whether to 🏋️ **train the model again at the end of processing or not** 

> train = 0 : No training is done when 0 
>            
> train = 1 : Training is done when 1

- This API returns a list of top three matching ailments which would be classified according to the query parameter you provided.

### Example 
- Passing the `query="I have been feeling sad and dejected for quite some time now "` results in the model returning the following list of ailments - 
            - **`["emotional pain","feeling dizzy","body feels weak"]`**
- Try for [yourself!](https://medappapi.onrender.com/process?query=%22i%20have%20been%20feeling%20sad%20and%20dejected%20for%20quite%20some%20time%20now%22&train=0)

### Deployment
You can deploy this API using docker. Run the following commands to run the api on your local machine: 
>docker build . -t medapi
>
>docker run --rm -p 5000:5000 medapi

This project can be readily deployed to any cloud platform providers like render.