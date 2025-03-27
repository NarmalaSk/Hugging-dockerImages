### 🚀 Hugging Face Image Loader GitHub Action

This GitHub Action **automates image retrieval** from Hugging Face and **loads a set of images from a file**, making it easy to integrate into your ML workflows.

### 📌 Features
- 📥 **Fetch a single image** from the Hugging Face Model Hub
- 🗂️ **Load a batch of images** from a local file

---

### 📖 Usage

#### Basic Example
Create a GitHub Actions workflow (`.github/workflows/hf_image_loader.yml`):

```yaml
name: Load Images from Hugging Face  
on: [push]  

jobs:  
  fetch_images:  
    runs-on: ubuntu-latest  

    steps:  
      - name: Checkout repository  
        uses: actions/checkout@v3  

      - name: Pull an Image from Hugging Face  
        uses: your-username/huggingface-image-action@v1  
        with:  
          hf_model: "huggingface/model-name"  
          image_file: "images/sample.jpg"  

      - name: Load a Set of Images  
        uses: your-username/huggingface-image-action@v1  
        with:  
          image_file: "images/image_list.txt"  
```

---

### ⚙️ Inputs

| Name        | Description | Required | Default |
|------------|------------|----------|---------|
| `hf_model` | Hugging Face model repository (for image retrieval) | ✅ Yes | - |
| `image_file` | Path to a single image or a file containing image paths | ✅ Yes | - |

---

### 📤 Outputs

| Name        | Description |
|------------|------------|
| `image_path` | Local path where the image is saved |
| `image_list` | List of images loaded from the file |

---

### 📜 Example Workflows

#### 1️⃣ Pull a Single Image from Hugging Face
```yaml
- name: Fetch Image  
  uses: your-username/huggingface-image-action@v1  
  with:  
    hf_model: "huggingface/model-name"  
    image_file: "images/sample.jpg"  
```

#### 2️⃣ Load Multiple Images from a File
```yaml
- name: Load Images from File  
  uses: your-username/huggingface-image-action@v1  
  with:  
    image_file: "images/image_list.txt"  
```

---

### 🔐 Authentication (If Needed)

If the Hugging Face model requires authentication:

1. Generate an API token from [Hugging Face Settings](https://huggingface.co/settings/tokens)
2. Add it as a **GitHub Secret** (`HF_TOKEN`)
3. Modify the workflow:

```yaml
env:  
  HF_TOKEN: ${{ secrets.HF_TOKEN }}  
```

---

### 📌 Contributing
Contributions are welcome! Feel free to submit **pull requests** or report issues in the repository.

---

### 📄 License
This project is licensed under the **MIT License**.

