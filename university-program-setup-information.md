**Install and Configure Terraform**
f
**Step 1:** **Install terraform as per below guideline**
https://developer.hashicorp.com/terraform/install <br/>
Download terraform based on your OS configuration. <br/>

Below I have stated example from Windows OS. <br/>

**Step 2:** **Create a folder in your C: drive. Name the folder as "Terraform"** <br/>
In my case I have it under: <br/>
C:\Users\madhu\Terraform <br/>

**Step 3:** **Unzip the .zip file you downloaded in step 1 and copy terraform.exe file inside the Terraform folder you created in step 2** <br/>

**Step 4:** **Now download and install Visual Studio Code** <br/>
https://code.visualstudio.com/download <br/>
For example, if you are using Windows OS - choose correct option against "User Installer" <br/>

**Step 5:** **Click on Windows key and then click on** **"Edit the system environment variables** <br/>
![image](https://github.com/user-attachments/assets/6f15a7b4-dd16-48cc-bcf2-e30a436df21c) <br/>

**Step 6:** **Click on "User variables" for your account and then select Path and click on Edit** <br/>
Then click on "new" <br/>
Add Path to your Terraform folder - which you accomplished in Step 2. <br/>
In my case I added <br/>
C:\Users\madhu\Terraform <br/>
![image](https://github.com/user-attachments/assets/69ec8bca-ab9a-4ee6-ad6f-2c66c6ccef31) <br/>

**Step 7:** **Open Visual Studio Code and install the extensions shown in image**  <br/>
![image](https://github.com/user-attachments/assets/51d628bb-5c35-4db9-872e-7f80bf1c5ea7)  <br/>
Restart Visual Studio Code. <br/>

**Step 8:** **Choose th folder "Terraform" you created in Step 2**  <br/>

**Step 9:** **Download the .zip file from here**  <br/>
[Repo link](https://github.com/madhubanti0007/terraform-code-samples)  <br/>
![image](https://github.com/user-attachments/assets/f5ed5c83-904a-41fa-b397-c3b289924734)  <br/>

**Step 10:**  **Unzip the .zip file** <br/>
a) copy the content from inside of the folder "terraform-code-samples" <br/>
b) then paste it within "Terraform" folder which you created in Step 2 <br/>

**Step 11:** **In Visual Studio Code, Click on File -> Open Folder**   <br/>
![image](https://github.com/user-attachments/assets/bfb1aa65-31cf-48b4-bd80-490effbc2410)  <br/>

**Step 12:** **In Visual Studio Code, your folder structure would look like below** <br/>
Click on "Explorer" sign. <br/>
![image](https://github.com/user-attachments/assets/24c163f8-4805-4f67-98cf-f05c2e533a15) <br/>

**Step 13:** **Open bash terminal** <br/>
![image](https://github.com/user-attachments/assets/0a48d89a-ed0a-4ca0-b30e-c075d671d951) <br/>

a) Run _terraform version_ ,as shown below - you will get to see the terraform version you are going to use: <br/>
![image](https://github.com/user-attachments/assets/3076c94f-f771-43f3-8b8e-0c8d62cbb6cb) <br/>

b) Navigate to _terraform-test_ folder <br/>
![image](https://github.com/user-attachments/assets/4febcdb7-9701-436d-a2ea-0d9f3bed8a8c) <br/>

**Azure Free Account Set Up** <br/>
**Step 1: First create Azure Free Account:** <br/>
Check out this blog: https://k21academy.com/microsoft-azure/create-free-microsoft-azure-trial-account/ <br/>
**Note** - Azure will not deduct money from your credit card until you yourself want to subscribe to "pay As You Go" after free period ends. <br/>

**Step 2:** **After free account is set up, login to portal.azure.com** <br/>
![image](https://github.com/user-attachments/assets/da832553-55ef-4f80-93f1-8fbcf4b3a62d) <br/>

Your tenant will be shown as "DEFAULT DIRECTORY" <br/>

a) In search bar, search for: Subscriptions <br/>

I have paid subscriptions, in your case, you will see free subscription <br/>

b) copy and note down the subscription id. <br/>
![image](https://github.com/user-attachments/assets/56eb6ee3-79c3-4e19-bd9b-331be7d59c42)


**Step 3:** **Note down tenant id** <br/>
a) In search bar, search for  "Tenant Properties" <br/>

![image](https://github.com/user-attachments/assets/697976d9-9767-40a5-bdd9-da1f9a3ffc58)


b) Copy the tenant id

![image](https://github.com/user-attachments/assets/a4a5785e-ad7e-476e-9688-f2f7fe8a6984)

**Step 4:** **Search for "Resource Groups" in the search bar and create rsource group under free subscription**
![image](https://github.com/user-attachments/assets/812bbf3a-6262-4237-aa7a-0029d8ee46eb)

Expected outcome: **It should not give any error.**

(Delete the created resource group)

**Step 5:** **Now Do App Registration  as mentioned below**

Visit Azure portal and register “Terraform” app.
![image](https://github.com/user-attachments/assets/d082a8ea-6333-4f5b-86a6-7cb73647bad5)

**Note the app client id, you will require it later.**

![image](https://github.com/user-attachments/assets/82434a47-9a97-465b-adec-864737ba6699)

**Step 6:** **Create client secret and note the value as shown below _(once you leave or refresh page, secret value will not be visible to you anymore)_**
![image](https://github.com/user-attachments/assets/fb5b564d-c79c-4346-b121-0a0b2c74fa1b)

**Test your Terraform Set-Up:**

a) Open Visual Studio Code

b) open main.tf under Terrafdorm-test folder

c) There under below section, replace the values, you noted during your Azure account set up

![image](https://github.com/user-attachments/assets/396be44a-9d87-49ff-b836-61a27c3b0bc9)

d) in bash terminal, _navigate to terraform-test_
![image](https://github.com/user-attachments/assets/6f9af1af-8075-4d86-b9c6-909ace5e982d)

e) Run _terraform init_
Expected outcome: It should install necessary provider versions
![image](https://github.com/user-attachments/assets/37b7e0fc-005c-401a-8a16-7d61be630be7)

f) Run _terraform plan_
Expected outcome: It should show you the resources you want to create
![image](https://github.com/user-attachments/assets/f9fc8da8-d8f8-44a5-bc5a-c623661b720d)

**Opional:** If you would have LinkedIn account, you may visit this article and install Infracost plugin.  <br/>
Perform the steps mentioned till "Connect VSCode to Infracost". <br/>
[LinkedIn Article](http://linkedin.com/pulse/infracost-predict-cost-your-terraform-before-you-provision-jash-5nquf/?trackingId=Lsmv6pz%2FSw%2BAJ331l0FBXA%3D%3D)





















