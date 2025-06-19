# CopilotBuilder Workshop

Welcome to the CopilotBuilder workshop at AI Rising! 

We are here to show you how to use no and low-code tools to write your very own AI copilots and agents.
Today, we'll learn the basics of CopilotBuilder and how you can use LLMs and SLMs to quickly create
AI agents.

**Agenda** 
- Register for CopilotBuilder
- Create a copilot
- Compare LLMs
- Use RAG
- Search documents via data collections
- Use an API with your Copilot

## Register

First, let's create a new CopilotBuilder account. You will get a 30-day trial. No payment information is necessary to start a trial. We will also not send you any marketing emails.

1. [Go to CopilotBuilder](https://copilotbuilder.ai)
2. Click on register
3. You can create a local account or log in with your Microsoft or Google account
4. Check your email for a validation email
5. For this workshop, we'll choose the "Pro" subscription. This gives you access to more LLMs/SLMs and the ability to deploy your copilots outside of the app. You can change your subscription level whenever you want.

## Your First Copilot

### Create Your First Copilot

We're going to create a general Copilot based on a template. We'll then test the copilot and compare LLMs.

1. On the Dashboard, click on **Manage Copilots** in the copilots box
2. Click on **Add Copilot** on the top right
3. Give your new copilot a name and a description of your choice
4. Click on **Use a Template** (we'll cover the Assistant later)
5. Choose the **Q&A Template**
6. Fill in the details below:

| Field | Input |
| --- | --- |
| What will your Copilot do? | Answer general questions |
| How will your Copilot greet users? | Hi! How may I help you? |
| What is your assistant's name? | HelperBot |

7. Keep the selected model as GPT-4o-Mini for now

### Test Your First Copilot

1. Click on the **Test Copilot** button (it looks like a caption)
2. Ask a question like "What was the first video game where Mario appeared?"
3. GPT-4o-mini should have answered that quickly. But how would another LLM answer that question?
4. Click the **Compare with another LLM** switch at the top of the screen
5. Select a different model and ask the same question. Was the response faster? What about the quality?

## Make a StoryBot

Let's create a copilot with the assistant and create something a bit more complex (but fun).

1. Create a new copilot
2. Choose a name and description of your choice (I used StoryBot)
3. This time, click on **Use Assistant**
4. Go through the conversation with our assistant who helps create a copilot. Each conversation may differ, but answer the questions similar to the below.

| Question | Answer |
| --- | --- |
| What will your copilot do? | Create a story |
| What personality do you want? | Creative |
| Who is the audience | General audience |
| What will the user input? | Plot and characters |
| What should the copilot output? | A complete story |
| Greeting | Suggest one |

### Edit the Prompt

You now see details about the prompt. You can further customize your copilot here. Let's explore this.

1. Click on the **Advanced Settings** toggle. Here, you can select a different model, control temperature and TopP (which we call Creativity), and enable image generation.
2. Switch on **Enable Image Generation**
3. In **Additional Rules**, enter "Generate an image of the story along with the story text"
4. Save the copilot
5. Skip creating a data collection for now and choose **Test Copilot**
6. Follow along with the chat and a story and image of the story will be generated

## RAG

Copilots can use documents for reference. CopilotBuilder does this in two ways: inline file uploads and data collections.

- Use an **inline file upload** when you want answers about a specific document as **short-term memory**
- Use a **Data Collection** when you want to give **long-term memory** to your copilot

### Inline file upload

1. Go to the first Copilot you created that answers general questions and click **Test Copilot**
2. Click on the upload file button next to the input (it looks like a paper clip)
3. Upload the "C programming reference.pdf" file
4. Ask "Summarize this document in one paragraph"

### Use a Data Collection

1. On the left menu, click **Data** and create a new data collection
2. Choose a name of your choice
3. Upload the "C programming reference.pdf". Give the document a minute or two to upload and embed. While this happens, I'll talk to you about embedding.
4. Go back to **Copilots** and click on the **Data Collections** button on the first copilot you created
5. Click the checkbox next to the data collection you just created and save
6. Test the copilot (you know the drill by now) and ask "What are pointers in C?". You should get an answer that cites the document in the data collection.

## Exercise - Create an Automated Test Grading System

You are a teacher at Columbus State who teaches a popular class about Star Wars. You have 200 students and you want to speed up the grading process. You will make a copilot that will grade tests.

**Plan:**
- Create a data collection for the answer key
- Create a copilot for grading the test
- Accept a test as a file input

1. Create a data collection and upload "TestWithAnswers.xlsx"
2. Create a copilot. This time, clone the first copilot you created and we'll edit the settings manually.
3. Edit the copilot to be the following:

| Field | Value |
| --- | --- |
| Objective | Grade an uploaded test |
| Audience | Teacher |
| Personality | Yoda |
| Assistant Name | GraderBot |
| Greeting | Grade your test, I will |
| Inputs | The test |
| Outputs | The graded test |

4. Test the copilot and send **Test.xlsx** as an attachment
5. Instruct the copilot to grade the test and Yoda will grade the test for you

## Uae an API with a Copilot

Copilots are powered by large language models (LLMs), but these models are only limited to
knowledge that they have. What if you wanted to use live data like inventory from your
online store? CopilotBuilder can interact with APIs that conform to the OpenAPI specification. 

In this exercise, we will connect to an API that gets live weather information (information that
LLMs do not have).

### Set up a Live Weather API Connection

1. Pick **API Connections** from the navigation menu.
2. Click the **Add API Connection** button
3. Name the connection "WeatherAPI"
4. Choose a URL for the OpenAPI spec location
5. Use this URL https://cpb-workshop-exampleapi-gzbbg0g3hkctbxfn.eastus2-01.azurewebsites.net/openapi/v1.json
6. Click the **Sync OpenAPI Spec** button
7. Choose the first GET method, which is for the /api/Weather/current endpoint
8. Leave Security Type as "None"
9. Save the connection

### Create a Weather Reporter Copilot

1. Go to the Copilots page and add a Copilot.
2. Name the Copilot Weather Reporter and use any description you want.
3. To save time, we'll copy the first Copilot you made.
4. On the Copilot dashboard, go to your new Copilot and click the edit button.
5. Use these values for the prompt:

| Field | Value |
| --- | --- |
| Objective | Gets a weather report based on a location |
| Audience | General audience |
| Personality | A friendly weather reporter who tells cheesy jokes |
| Assistant Name | Weatherly |
| Greeting | Which location would you like to use for the current forecast? |
| Inputs | A location for the weather report |
| Outputs | Weather information for the location |
| Details | Use an API to get the current weather conditions for a location. Output the weather in a nice summary with emojis and styled text. |
6. Back on the Copilot dashboard, click the **API Connections** button (a puzzle piece) for your new Copilot.
7. Choose the API connection you previously created.
8. Test your Copilot and ask for a location of your choice. You will get a live weather update.

## Let the World Use Your Copilot

If you have a Professional subscription, you can publish your copilot and let others use it. Let's deploy your general copilot.

1. On the general copilot you first created, click the **Deployments** button (this looks like a cloud)
2. Create a **Hosted Deployment**. This creates a copilot published to the web.
3. Use a deployment name of your choice.
4. Set the publish status to **Published** and save.
5. You now have a link to your copilot that you can share.