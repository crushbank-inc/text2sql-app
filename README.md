# Watsonx Text to SQL Application

This application provides APIs to help with natural language text to SQL generation using watsonx.ai. The assumption is that SQL tables are added to the prompt using a prompt template.  The natural language request is first classified to determine if it is a reasonable SQL query, then the SQL is generated and run against whatever database is connected. 

For this application to retrieve the proper prompts, you must create prompt templates and promote them to a deployment space within watsonx.ai.  For steps to do this, refer to [How to handle using dynamic prompt templates with watsonx.ai](./dynamic_templates.md)

We provide some prompt templates in the [prompts](./prompts) subdirectory.  At a minimum, the `promptClassify` and `promptSQL` need to be created for this application to work as is. 

This README will guide you through installing the project locally and deploying it on OpenShift or IBM Code Engine. Additionally, you will learn how to access the Swagger documentation once the project is deployed.

## How to Install Locally

To install this project locally, follow these steps:

1. **Clone this repository**

    ```bash
    git clone https://github.com/crushbank-inc/text2sql-app.git
    ```

1. **Navigate to the project directory:**

    ```bash
    cd text2sql-app/application
    ```

1. **Create the Enviroment, Activate it, and Install Requirements:**

    Python Virtual Environment 
    ** Use Phython 3.12.8 on your local machine.
    ```bash
    python --version
    Python 3.12.8
    ```

    ```bash
    python -m venv assetEnv
    source assetEnv/bin/activate
    python -m pip install -r requirements.txt
    ```

1. **Update your secrets:**

    Copy `env` to `.env` and fill in the variables with your url, passwords, and apikeys.

    # watsonx.ai variables
    -----------------------------------------------------------------------------
    APP_API_KEY - Add a password that will be used to authorize the API  
    WX_PROJECT_ID - The watsonx.ai Project ID  
    WX_DEPLOYMENT_URL - The deployed prompt in watsonx.ai  
    -----------------------------------------------------------------------------
    # watsonx.data variables
    PRESTO_HOSTNAME - Presto Engine hostname.Example "na4.services.cloud.techzone.ibm.com"  
    PRESTO_PORT - Presto port number  
    PRESTO_USERNAME - watsonx.data username, example ibmlhadmin  
    PRESTO_PASSWORD - watsonx.data user password  
    PRESTO_CATALOG - watsonx.data catalog name, exmaple iceberg_data  
    PRESTO_SCHEMA - Iceberg schema name  
    PRESTO_TLS_LOCATION - presto certificate location, exmaple certs/presto.crt  


2. **Copy cert files:**
    Copy the presto.crt file to the application/certs directory.

1. **Start the project:**

    ```bash
    python app.py
    ```

1. **URL access:**

    The url, for purposes of using cURL is http://0.0.0.0:4050.

    To access Swagger go to http://0.0.0.0:4050/docs

## Deploying onto OpenShift

You can deploy this application onto a provisioned [Red Hat OpenShift](https://cloud.ibm.com/docs/openshift?topic=openshift-getting-started) cluster. See the steps [here.](./openshift-setup/README.md)

## Deploying to Code Engine

You can deploy this application onto IBM Cloud using our Code Engine utility. See the steps [here.](./code-engine-setup/README.md)

## How to Access Swagger Once Deployed

After deploying your application, you can access the Swagger documentation to test your API endpoints. The URL to access Swagger will depend on where your application is deployed.

- **OpenShift:** The URL will be based on the route created for your application. You can find the route by running:

    ```bash
    oc get route
    ```

    Then, append `/docs` to your application's URL.

- **Code Engine:** Wait for the build to complete and access the public URL by selecting the **Domain mappings** tab of the open **Application** pane.  Or go into the project by selecting **Projects** from the **Code Engine** side menu. Open the project, then select **Applications**. You will see a URL link under the **Application Link**.

## Using the API

After deploying the application, you can now test the API: 

### Swagger

1. Open Swagger by going to `<url>/docs`.

2. Authenticate the api by clicking the lock button to the right.  Enter the value you added for the `RAG_APP_API_KEY`.

3. Click the `Try it out` button and customize your request body:
    ```
{
  "question": "How many tickets did Teldar Paper create?",
	"dbtype": "PRESTO",
  "llm_params": {
    "model_id": "ibm/granite-13b-instruct-v2",
    "parameters": {
      "decoding_method": "greedy",
      "max_new_tokens": 800,
      "min_new_tokens": 1,
      "moderations": {
        "hap_input": "true",
        "hap_output": "true",
        "threshold": 0.75
      }
    }
  }
}
    ```

    At a minimum, specify:
    ```
    {
      "question": "<your question>"
      "dbtype": "PRESTO",
    }
    ```
    All other values have defaults or you can adjust the other parameters to improve your results.
   
### cURL

To execute this api from command line, use this command: 
```
curl --location '<application url>/texttoxql' \
--header 'Content-Type: application/json' \
--header 'RAG-APP-API-Key: <your custom RAG-APP-API-KEY value>' \
--data '{
  "question": "string"
  "dbtype": "PRESTO",
}'
```
### Postman

1. Open a new tab and from the request type dropdown, select POST. In the url, paste your url (in this example, it's localhost): `http://127.0.0.1:4050/texttoxql`

2. Under Authorization, choose type **API Key**, add the following key/value: `APP-API-Key`/`<value for APP_API_KEY from .env>`

3. Under Body, select `raw` and paste the following json:
```
{
  "question": "<your question>",
  "dbtype": "MYSQL",
}
```
4. Hit the blue `SEND` button and wait for your result.

## Connecting this application to watsonx Assistant

You can connect watsonx Assistant to invoke the `classify` and `texttosql` APIs. See the steps [here.](./watsonx-assistant-setup/README.md)

