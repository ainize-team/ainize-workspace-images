# ML Workspace
This branch is for creating Ainize Workspace images for machine learning developers or machine learning  researcher.

## Development Extension
* [Jupyter Notebook](https://jupyter.org/)
* [Visual Studio Code](https://github.com/cdr/code-server)
* [Terminal - ttyd](https://github.com/tsl0922/ttyd)

## Major Package List
```
Package                       Version
----------------------------- -------------------
matplotlib                    3.2.2
numpy                         1.19.5
pandas                        1.1.5
scikit-learn                  0.22.2.post1
scipy                         1.4.1
seaborn                       0.11.1
tensorflow                    2.6.0
torch                         1.9.0
torchaudio                    0.9.0
torchvision                   0.10.0
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

## How to use in Ainize Workspace
If you want to use this image in [Ainize Workspace](https://ainize.ai/workspace), please follow the steps below.

1. Go to the [Ainize Workspace](https://ainize.ai/workspace) and click the "Create your workspace" button.
![first](https://user-images.githubusercontent.com/20783224/130539311-eebccc01-b037-4452-a8d9-161295fa42bb.png)

2. Select "import from github" as the container option.
![second](https://user-images.githubusercontent.com/20783224/130539536-1d466e72-5370-485e-b989-fc9c73d3eabe.png)

3. Click "Start with repo url" button.
![third](https://user-images.githubusercontent.com/20783224/130539682-7ee3c764-8073-4787-90ef-b299e71607ef.png)

4. Paste "https://github.com/ainize-team/ainize-workspace-images" into "Enter a Github repo url" and select the "ml-workspace" branch.
![fourth](https://user-images.githubusercontent.com/20783224/130539818-d4c3d3fb-2067-459c-9317-b630658fa040.png)

5. Select the required tool and press OK button.
![fiveth](https://user-images.githubusercontent.com/20783224/130540107-d2f57207-7c2d-44ef-9655-5d1bb4caa931.png)

6. Select the machine type and click the "Start my work" button.
![sixth](https://user-images.githubusercontent.com/20783224/130540210-b4918b3f-d640-40ea-90ca-a8799c1d0a4b.png)