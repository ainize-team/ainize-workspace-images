## Tensorflow Workspace

This branch is for creating Ainize Workspace images for deep learning developers using Tensorflow.

### Development Extension

- [Jupyter Notebook](https://jupyter.org/)
- [Visual Studio Code](https://github.com/cdr/code-server)
- [Terminal - ttyd](https://github.com/tsl0922/ttyd)

### Major Package List

```
Package                           Version
--------------------------------- ------------
nltk                              3.2.5
numpy                             1.19.5
pandas                            1.3.3
Pillow                            7.1.2
scikit-learn                      0.22.2.post1
scipy                             1.4.1
tensorflow                        2.6.0
```

### How to Test Your Image

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

### How to use my custom image in Ainize Workspace

Do you want to use the image you created? If so, please follow the instructions.

1. Click the "Create your workspace" button on the [Ainize Workspace page](https://ainize.ai/workspace).
   ![first](https://user-images.githubusercontent.com/20783224/130539311-eebccc01-b037-4452-a8d9-161295fa42bb.png)

2. As the Container option, select "Import from github".
   ![second](https://user-images.githubusercontent.com/20783224/130539536-1d466e72-5370-485e-b989-fc9c73d3eabe.png)

3. Click the "Start with repo url" button.
   ![third](https://user-images.githubusercontent.com/20783224/130539682-7ee3c764-8073-4787-90ef-b299e71607ef.png)

4. Put "https://github.com/ainize-team/ainize-workspace-images" in "Enter a Github repo url". And select the "tensorflow-workspace" branch.
   ![fourth](https://user-images.githubusercontent.com/20783224/135016746-e9c0bf3d-c543-41c4-ba0e-dc4384e657bc.png)

5. Select the required tool(s) and click the OK button.
   ![fiveth](https://user-images.githubusercontent.com/20783224/135016792-aff573d6-e204-4dcd-b85d-d2409dc5e4e9.png)

6. Click "Start my work" after selecting the machine type.
   ![sixth](https://user-images.githubusercontent.com/20783224/135016827-f5375434-41ba-46fb-9ccb-fcb87eacb7b5.png)

Now, enjoy your own Ainize Workspace! 🎉
