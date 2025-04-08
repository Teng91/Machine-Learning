# Machine-Learning
- Programming language: Python, Matlab
- Python version: 3.10.8
- Matlab version: 2019b
- 本專案包含多個機器學習相關的範例，涵蓋不同的演算法與技術，每個模組皆包含詳細的程式碼與範例資料

Machine-Learning/     
├── CNN/                
├── K-Means/            
├── KNN/                
├── Lasso/             
├── LDA/               
├── PCA/               
├── SVM/                

## 關鍵技術
1. 卷積神經網路 (CNN)
   - 程式碼檔案：CNN/hw9.mlx
   - 資料集：CNN/07HW2_digit.mat
   - 技術說明：
      - 使用 MATLAB 實現卷積神經網路 (CNN)
      - 包含卷積層、池化層與全連接層的基本結構
      - 適用於影像分類任務
   - 應用場景：
      - 手寫數字識別
      - 小型影像分類任務
2. K-Means 分群
   - 程式碼檔案：K-Means/hw11.ipynb
   - 資料集：K-Means/11HW1_KmeanData.mat
   - 技術說明：
      - 使用 Python 實現 K-Means 分群演算法
      - 支援自動選擇最佳分群數量 (Elbow Method)
      - 適用於非監督式學習的資料分群
   - 應用場景：
      - 資料探索與分群
      - 顧客分群分析
3. K 最近鄰 (KNN)
   - 程式碼檔案：KNN/hw10.mlx
   - 資料集：KNN/10HW3_train.txt
   - 技術說明：
      - 使用 MATLAB 實現 KNN 演算法
      - 支援不同距離度量方式 (如歐幾里得距離)
      - 適用於監督式學習的分類問題
   - 應用場景：
      - 手寫數字分類
      - 簡單的分類任務
4. Lasso 回歸
   - 程式碼檔案：Lasso/hw5.mlx
   - 資料集：Lasso/05HW1_diabetes.mat
   - 技術說明：
      - 使用 MATLAB 實現 Lasso 回歸
      - 支援特徵選擇與稀疏模型構建
      - 適用於高維資料的回歸分析
   - 應用場景：
      - 糖尿病進程預測
      - 特徵選擇與模型壓縮
5. 線性判別分析 (LDA)
   - 程式碼檔案：LDA/hw6.mlx
   - 資料集：LDA/06HW1_iris.csv
   - 技術說明：
      - 使用 MATLAB 實現 LDA
      - 支援降維與分類任務
      - 適用於多類別分類問題
   - 應用場景：
      - 鳶尾花分類
      - 資料降維與可視化
6. 主成分分析 (PCA)
   - 程式碼檔案：PCA/hw4.mlx
   - 資料集：PCA/04HW2_noisy.mat
   - 技術說明：
      - 使用 MATLAB 實現 PCA
      - 支援資料降維與特徵提取
      - 適用於高維資料的降維處理
   - 應用場景：
      - 資料降維與壓縮
      - 去除資料中的雜訊
7. 支援向量機 (SVM)
   - 程式碼檔案：SVM/hw7.ipynb
   - 資料集：SVM/07HW2_digit_mnist_uint8_full.mat
   - 技術說明：
      - 使用 Python 實現 SVM
      - 支援線性核與非線性核函數 (如 RBF)
      - 適用於監督式學習的分類問題
   - 應用場景：
      - 手寫數字辨識
      - 二元與多類別分類問題
