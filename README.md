# ML Workspace
This branch is for creating Ainize Workspace images for machine learning developers or machine learning  researcher.

## Development Extension
* [Jupyter Notebook](https://jupyter.org/)
* [Visual Studio Code](https://github.com/cdr/code-server)
* [Terminal - ttyd](https://github.com/tsl0922/ttyd)

## Major Package List
```
Package                           Version
--------------------------------- -------------------
datasets                          1.11.0
numpy                             1.20.2
torch                             1.9.0
torchelastic                      0.2.0
torchtext                         0.10.0
torchvision                       0.10.0
transformers                      4.10.0
datasets
```

## How to Test Your Image
Build Docker Image
```bash
docker build -t <image-name> .
```
Run Docker 
```bash
docker run -d -p 8000:8000 -p 8010:8010 -p 8020:8020 <image-name>
```

Run Docker with Password
```bash
docker run -d -p 8000:8000 -p 8010:8010 -p 8020:8020 -e PASSWORD=<password> <image-name>
```

Run Docker with Github Repo
```bash
docker run -d -p 8000:8000 -p 8010:8010 -p 8020:8020 -e GH_REPO=<github-repo> <image-name>
```

Run Docker with password and Github Repo
```bash
docker run -d -p 8000:8000 -p 8010:8010 -p 8020:8020 -e PASSWORD=<password> -e GH_REPO=<github-repo> <image-name>
```

Jupyter Notebook : http://server-address:8000/

Visual Studio Code : http://server-address:8010/

Terminal - ttyd : http://server-address:8020/

## How to use my custom image in Ainize Workspace
Do you want to use the image you created? If so, please follow the instructions.

1. Click the "Create your workspace" button on the [Ainize Workspace page](https://ainize.ai/workspace).
![first](https://user-images.githubusercontent.com/20783224/130539311-eebccc01-b037-4452-a8d9-161295fa42bb.png)

2. As the Container option, select "Import from github".
![second](https://user-images.githubusercontent.com/20783224/130539536-1d466e72-5370-485e-b989-fc9c73d3eabe.png)

3. Click the "Start with repo url" button.
![third](https://user-images.githubusercontent.com/20783224/130539682-7ee3c764-8073-4787-90ef-b299e71607ef.png)

4. Put "https://github.com/ainize-team/ainize-workspace-images" in "Enter a Github repo url". And select the "huggingface-torch" branch.
![fourth](https://user-images.githubusercontent.com/20783224/132828591-f6dfae36-de16-4b1d-ac0e-abe5c8cf961d.png)


5. Select the required tool(s) and click the OK button.
![fiveth](https://user-images.githubusercontent.com/20783224/132829123-7f0398a2-f95a-46f3-835b-bcc75d778f45.png)


6. Click "Start my work" after selecting the machine type. 
![sixth](https://user-images.githubusercontent.com/20783224/130540210-b4918b3f-d640-40ea-90ca-a8799c1d0a4b.png)

Now, enjoy your own Ainize Workspace! 🎉