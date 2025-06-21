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
- Create and use workflows and scripts

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


## Workflows

Often the best way to solve a problem is to break it up into smaller steps, each of which can be tackled by a copilot.
These individual copilots can then be orchestrated by a **workflow** to work together to solve the bigger problem.

Let's make some Copilots and workflows for a language translation service. We want to be able to translate either German or
Spanish into English. Our plan is to develop a system that can:

- Identify the language of the text to be translated (either German or Spanish)
- Based on this, do the translation to English
- Provide an english summary of the translated text

### Create copilots

Let's start by creating copilots that translate from Spanish to English, and German to English.

#### Spanish Translator

For Spanish to English:

1. On the Dashboard, click on **Manage Copilots** in the copilots box
2. Click on **Add Copilot** on the top right
3. Give your new copilot a name and a description of your choice, we recommend naming it *Spanish Translator* so you can find it later.
4. Click **Start** in the *Use a Template* tile
5. Choose the **Q&A Template**
6. Fill in the details below:

| Field | Input |
| --- | --- |
| What will your Copilot do? | Translate text from Spanish to English |
| How will your Copilot greet users? | Hi! What Spanish text are we translating? |
| What is your assistant's name? | Spanish Translator |

Select **Gemini Flash** for the language model.

7. Click **Save**
8. Edit the copilot you just created, by selecting the *Edit* icon it its tile.
9. Fill in the following:

| Field | Input |
| --- | --- |
| Personality | Professional |
| Inputs | Spanish text |
| Outputs | The input translated to English |

In the *Explain what your Copilot will do and other rules you'd like it to follow* section, add the following:
	```
	Provide only the translation, and nothing else. Do not ask any follow-up questions.
	```
10. Click **Save Prompt**
11. Test your copilot by selecting the *Test Copilot* (left-most) icon on the tile for the copilot.

*Si hablas español escribe lo que quieras.* 
If you don't speak Spanish, you can test it with the following phrase:

	**Hola amigo, como estas esta mañana**

#### German Translator

For German to English, we'll just make a copy of the **Spanish to English** copilot, 
and replace *Spanish* with *German* in the prompt.

1. On the Dashboard, click on **Manage Copilots** in the copilots box
2. Click on **Add Copilot** on the top right
3. Give your new copilot a name and a description of your choice, we recommend naming it *German Translator* so you can find it later.
4. Click **Start** in the *Copy a Copilot* tile
5. Select the *Spanish Translator* copilot, and click **Copy Copilot**
6. Edit the new *German Translator* copilot, by selecting the *Edit* icon it its tile
7. In the prompt, replace every occurence of *Spanish* with *German*:

| Field | Input |
| --- | --- |
} Objective | Translate text from Spanish to English }
| Greeting | Hi! What German text are we translating? |
| Inputs | German text |

8. Click **Show Advanced Settings** and select **GPT-4o** as the language model.
9. Click **Save Prompt**
10. Test your copilot by selecting the *Test Copilot* (left-most) icon on the tile for the copilot.

*Wenn Sie Deutsch sprechen, geben Sie ein, was Sie möchten.* 
If you don't speak German, you can test it with the following phrase:

	**Hallo Freund, wie geht es dir diese morgen?**

#### Text Summarizer Copilot

We'd also like a summary of translated text, so let's create a copilot that summarizes text:

1. On the Dashboard, click on **Manage Copilots** in the copilots box
2. Click on **Add Copilot** on the top right
3. Give your new copilot a name and a description of your choice, we recommend naming it *Text Summarizer* so you can find it later.
4. Click **Start** in the *Use a Template* tile
5. Choose the **Q&A Template**
6. Fill in the details below:

| Field | Input |
| --- | --- |
| What will your Copilot do? | Summarize the input text |
| How will your Copilot greet users? | Please provide the text to summarize |
| What is your assistant's name? | Language Summarizer |

7. Click **Save**
8. Edit the copilot you just created, by selecting the *Edit* icon it its tile.
9. Fill in the following:

| Field | Input |
| --- | --- |
| Audience | General Audience |
| Personality | Professional |
| Inputs | Text that is be summarized |
| Outputs | A one paragraph summary of the input text |

10. Click **Save Prompt**
11. Test your copilot by selecting the *Test Copilot* (left-most) icon on the tile for the copilot.

You can use the text in the **citizen kane.txt** (found in the Github **Data** folder) file as input to the summarizer. 
**TIP:** Expand the input box to be multi-line so that you can see what you've copied into the input box.
You should get a short plot summary for the movie *Citizen Kane* as the output.

### Create the Translation Workflow
Now we have all the components we need to build our translation system. Let's put them together using a workflow.

#### "Start Workflow" script
First, we'll create a simple script to start the workflow. We'll cover scripting later, 
for now we just need a simple one-line script to get the workflow started:

1. In the navigation menu, select **Scripts**
2. Click on **Add Script**
3. Name the script **Start Workflow**
4. Copy the following line into the script textbox

	```
	(prl *message*)
	
	```

5. Click **Save**

*(NOTE: In a future version of CopilotBuilder, this won't be necessary)*

#### Workflow creation

Now we're finally ready to put together our language translation service.

1. In the navigation menu, select **Workflows**
2. Click on **Create Workflow** in the upper-right. This brings up the workflow designer.
3. Enter the following for the workflow details, or make up your own!

| Field | Input |
| --- | --- |
| Workflow Title | Language Translator |
| Workflow Description | Translates text to English |
| Greeting | Hello! What text are we translating? |
| Assistant Name | Language Translator |

4. Click **Choose an agent to start**
5. In the *Choose Your Agent* popup, under *Scripts*, select **Start Workflow** script and click **Add Agent**

First, we'll add a decision step that will determine the language of the input text and use invoke the corresponding translator:

6. In the workflow designer, on the *Start Workflow* tile, click on the *Make a Decision* icon (second from the left)
7. **Step 1: The Condition**
we want to use either the German-English or Spanish-English translator, depending on the language in which the input is written,
so our condition is:

	```
	The input text is written in German.
	```

Enter this text as the condition, and click **Next ->**

8. **Step 2: The "True" Path**
If the condition we set is true, the input is written is German, so we want to use the German-English translator.
Click on *Choose an Agent to Execute*
9. Choose the *German Translator* Copilot, and click **Add Agent**

10. **Step 3: The "False" Path**
If the condition we set is false, we want to use the Spanish-English translator.
11. Choose the *Spanish Translator* Copilot, and click **Add Agent**

Next, we'll add the text summarizer to give us a summary of the translated text:

12. In the workflow designer on the *Decision* tile click on the *Add Next Agent* (left-most) icon.
13. Select the *Text Summarizer* Copilot and click **Add Agent**
14. In the *Workflow Details* box, Click **Save Workflow**

#### Test the workflow

1. In the workflow tile for the *Language Translator* workflow, click the *Test Workflow* icon.
2. You can find *spanish text.txt* and *german text.txt* files in the **Data** folder in Github.
Use these to test the workflow.
**TIP:** Expand the input box to be multi-line so that you can see what you've copied into the input box.


## Scripting

CopilotBuilder **scripts** allow us to modify data as they move between Copilots in a workflow.
This allows us, for example, to insert data from (or send data to) external sources, 
or to modify the output of an agent before it's passed on to the next one in the workflow.

For this example, we will create a recipe copilot that will receive a list of available ingredients,
obtained from a SQL database *via* a script, and will come up with a recipe based on those ingredients.

### Recipe Maker Copilot

We'll start with the recipe maker copilot:

1. On the Dashboard, click on **Manage Copilots** in the copilots box
2. Click on **Add Copilot** on the top right
3. Give your new copilot a name and a description, for example *recipe maker*
4. Click on **Use a Template**
5. Choose the **Q&A Template**
6. Fill in the details below:

| Field | Input |
| --- | --- |
| What will your Copilot do? | Create a recipe from a list of ingredients |
| How will your Copilot greet users? | Hi! How may I help you? |
| What is your assistant's name? | Recipe Maker |

Choose **GPT-4o** for the LLM

7. Click **Save**
8. Edit the copilot you just created
9. In the *Explain what your Copilot will do and other rules you'd like it to follow* section, 
add the text from the **recipe copilot rules.txt** file (found in the Github **Prompts** folder)
10. Click **Save Prompt**

### Database query script

Next, we will define two scripts:
- a helper script with code to connect to a SQL Server database
- a query script that uses the helper script to execute a SQL query, and pass the results to the *Recipe Maker* copilot.

For the helper script:

1. In the navigation menu, select **Scripts**
2. Click on **Add Script**
3. Name the script **SQL Helper**
4. Copy the script from the **SQL Helper.lsp** file (found in the Github **Scripts** folder) into the script textbox
5. Click **Save**

For the query script:

1. In the navigation menu, select **Scripts**
2. Click on **Add Script**
3. Name the script **Get Ingredients**
4. Copy the script from the **Get Ingredients.lsp** file (found in the Github **Scripts** folder) into the script textbox
5. Test the script by clicking **Test Script**, and note the script output 
6. Click **Save**

### Recipe workflow

Now we'll put the script and the copilot together in a workflow.

1. In the navigation menu, select **Workflows**
2. Click on **Create Workflow** in the upper-right. This brings up the workflow designer.
3. Enter the following for the workflow details, or make up your own!

| Field | Input |
| --- | --- |
| Workflow Title | Meal Maker |
| Workflow Description | Makes a meal |
| Greeting | Hello! What meal are we making? |
| Assistant Name | Meal Maker |

4. Click **Choose an agent to start**
5. In the *Choose Your Agent* popup, under *Scripts*, select **Get Ingredients** script and click **Add Agent**
6. On the workflow designer, in the **Get Ingredients** box, select *Add next agent* - the left-most icon
7. In the *choose your agent* popup, under copilots, choose the **Recipe Maker** copilot and click **Add Agent**
8. In *Workflow Details* click **Save workflow**

### Test the Workflow

1. In the workflow tile for the *Meal Maker* workflow, click the *Test Workflow* icon.
2. Ask it to make a meal (breakfast, lunch, dinner)


## Let the World Use Your Copilot

If you have a Professional subscription, you can publish your copilot and let others use it. Let's deploy your general copilot.

1. On the general copilot you first created, click the **Deployments** button (this looks like a cloud)
2. Create a **Hosted Deployment**. This creates a copilot published to the web.
3. Use a deployment name of your choice.
4. Set the publish status to **Published** and save.
5. You now have a link to your copilot that you can share.
