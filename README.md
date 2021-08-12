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
tensorflow                    2.5.0
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