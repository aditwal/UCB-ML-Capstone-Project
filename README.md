## Project Title: Estimation of Remaining Useful Life of Machine Components using Advanced Neural Networks

**Author**
Aditya Walvekar

### Outline of project

- Data Import, Processing and EDA: [Link to notebook 1]()
- Model Training, Predictions and Deployment: [Link to notebook 2]()
- Raw Data Folder: 
- Processed Data Folder: 
- Saved Models Folder: 

### Executive summary

#### Rationale

Predictive maintenance techniques use data analysis tools to help determine the condition of in-service equipment or detect anomalies in processes and thus estimating when maintenance should be performed before they result in failure. Predictive maintenance deals with prediction of remaining useful life (RUL), which is the number of the loading cycles that a component of a machine is estimated to be able to function as intended. 

Predictive maintenance have tremendous advantages in all machine components that undergoes wear and tear during operation. Accurate prediction of remaining useful helps maximizing machine lifespan and minimizing planned downtime which leads to significant a cost-savings.  Additionally, it is very important aspect from safety point of view, as it prevents catastrophic failure of the machine component especially in the aerospace industry.

#### Research Question

This is a time series regression problem i.e. predicting a future response based on the history of response and relevant predictors and the dynamics between them. The objective of this project is to determine whether advanced neural netowrks can be used to estimate the RUL of a machine component using the available environmental and loading information from the sensors and controls of the machine component. 

#### Data Sources

This questions comes under the time series regression problem i.e. predicting a future response based on the history of response and relevant predictors and the dynamics between them. A multivariate time series is needed to solve a time series regression problem. The data usually comes from multiple instances of a machine component. The response is typically remaining useful life (RUL) of the machine components. The predictors are various sensors that provide information about the environmental and loading conditions over time. 

Publicly available NASA Commercial Modular AeroPropulsion System Simulation dataset (C-MAPSS) is chosen for this analysis (https://www.kaggle.com/datasets/behrad3d/nasa-cmaps). C-MAPSS dataset consists of 4 sub-datasets, with different operating and fault conditions, leading to complex relations with sensors. In every sub-dataset, training trajectories are concatenated along the temporal axis, and same applies for the testing trajectories as well.

The scope for this analysis is limited to Dataset FD001 with only one fault condition. This dataset contains data from 100 Engine IDs each in train and test set for various loading cycles. For all Engine IDs, there is 3 settings and 21 sensors information at each loading cycle which can be used as features.

#### Methodology

Remaining useful life (RUL) for an engine is predicted using advanced machine learning techniques using neural networks including temporal convolution layers and LSTM layers to account for the tempral relationship between features and the target. The current analysis aims to replicate the model presented in the this paper - https://arxiv.org/abs/1810.05644. Due to lack of computational resources and already complex nature of the model, hyperparameter tuning is out of scope. 

#### Results

* This project demonstrated use of advanced neural networks based model to estimate the RUL of the industrain machine. 

* The system architecture includes a combination of temporal convolution layers and LSTM layers was evaluated on the publicly available NASA Commercial Modular AeroPropulsion System Simulation dataset (C-MAPSS). 

* Model trained using augmented training set gave better predictions compared to the model trained on non-augmented data. 

* The model (with 3 CNN layers and 2 LSTM layers) proposed in the paper https://arxiv.org/abs/1810.05644  have better performance on the test set compared to the model with only 1 LSTM layer. 

* The Root Mean Square Error of the CNN-LSTM model trained on the augmented data was 11.75.

* The CNN-LSTM model can be used for in-situ monitoring of the machine components with various failure mode.  

* The trained model can be deployed to provide the machine operators a more accurate maintenance schedule by estimating RUL which can reduce the cost and downtime and imrpove productivity. 

* It can also be used to avoid catastrophic failures of the machines and improve safety of the operators and users. 

#### Next steps

* Improve understanding of LSTM layers and physical understandings of sequence length and batch size.

* Use Keras Tuner or Optuna hyper parameter tuning.

* Optimize the code to run on GPUs and train the model on system with multiple GPUs. 

* Evaluation the model on the other sub-datasets (FD002, FD003, FD004). The FD002 and FD004 datasets have six operating
conditions and the complex relations among sensors. Hence this evaluation is important to assess the robustness of the model.