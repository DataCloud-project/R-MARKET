<p align="center"><img width=50% src="https://raw.githubusercontent.com/DataCloud-project/toolbox/master/docs/img/datacloud_logo.png"></p>&nbsp;

[![GitHub Issues](https://img.shields.io/github/issues/DataCloud-project/R-MARKET.svg)](https://github.com/DataCloud-project/R-MARKET/issues)
[![License](https://img.shields.io/badge/license-Apache2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

# R-MARKET

R-MARKET provides a decentralised trusted marketplace for resources (software appliances and hardware devices) spread across the Computing Continuum. The tool leverages hybrid permission and permissionless blockchain based on the Ethereum technology to federate, search and provision available resources for deploying big data pipelines. In addition, the tool maintains the history of transactions, the reputation of resource providers and consumers and executes payments for services as well as compensations for SLO violations.
R-MARKET acts as an intermediary between the cloud resources from the Computing Continuum, ADA-PIPE and DEP-PIPE. In the below the figure shows the high-level architecture of the tool: the resources (Workers) are grouped in Worker Pools and listed in R-MARKET by their providers. R-MARKET provides ADA-PIPE with an API for querying resources that match a semantic description. Based on the returned list of Work Orders, ADA-PIPE signs and transmits a Request Order to the PoCo smart contracts, which will perform a series of checks, provision the Workers and hand their control over to DEP-PIPE.
R-MARKET mixes two sets of interfaces: the low-level smart contracts APIs are used for critical operations (e.g., sending Request Orders), while high-level REST APIs are used for off-chain operations (e.g., querying the Order Book).


![alt text](https://raw.githubusercontent.com/DataCloud-project/R-MARKET/main/docs/R-MARKET.png)

## Some important components of R-MARKET tool

1. SDK: The R-MARKET SDK is developed based on the iExec SDK. It is a CLI and a JS library that allows easy interactions with the iExec developed decentralized Marketplace in order to run off-chain computations. Follow the [link](https://github.com/DataCloud-project/R-MARKET_SDK) for more details.

2. Node.js Server: Entrypoint of the R-MARKET tool. The [Node.js server](https://github.com/DataCloud-project/R_MARKET_NodeJS) has four (4) different interfaces, which enables the connection between the R-MARKET tool and other pipeline tools, also it helps users to access the R-MARKET tool. 

3. ReactJS UI: UI of the R-MARKET tool. This [UI](https://github.com/DataCloud-project/R_MARKET_UI) helps the user getting the available resources, creating a contract with one of them and getting the result of the execution of the contract after some time.

4. Market-API: Allow offchain order sharing. For more details please follow the [link](https://github.com/DataCloud-project/Market-API). 

5. Scheduler: Responsible for organizing the work distribution and the order publication of a Worker Pool (Resource Pool). While not doing the actual computation, the hosting entity of the Scheduler receives a fee for running a scheduling mechanism and managing the infrastructure. This component helps the host to compete with other pools to attract workers. The main aim of this component is to achieve efficient management, which guarantees workers' income. This component is also developed based on the iExec Core. For more technical details, please visit the [link](https://github.com/DataCloud-project/R-MARKET_Scheduler).

6. Worker: The Worker will be developed based on the iExec-Worker component, which is in charge of running computing tasks sent by requesters through the R-MARKET. For more details please visit the [link](https://github.com/DataCloud-project/R-MARKET_Worker).

7. Dependencies: Both Scheduler and Worker are dependent on this component. R-MARKET Dependencies is a critical component that, along with R-MARKET Worker and R-MARKET Scheduler, forms the R-MARKET tool's middleware. Based on the [iexec-common](https://github.com/iExecBlockchainComputing/iexec-common) the Dependencies is developed. For more technical details, please follow the [link](https://github.com/DataCloud-project/R-MARKET_Dependencies).

8. Explorer: The R-MARKET Explorer is a web application which allows to explore a chain. This component based on one of the iExec stack's key component, which is famously known as [BlockScout](https://github.com/iExecBlockchainComputing/blockscout). For more technical details please follow the [link](https://github.com/DataCloud-project/R-MARKET_Explorer).

9. All-in-One Blockchain Node: R-MARKET tool provides the blockchain-based decentralised marketplace for the resources. The Blockchain network has been developed based on the [Ethereum mainnet](https://ethereum.org/en/glossary/#mainnet) and inspired by the [iExec sidechain](https://v5.pools.iex.ec/pool/iexecblockchaincomputing/iexec_sidechain). Follow the [link](https://github.com/DataCloud-project/All-in-One_Blockchain) for more details.   


## Core development team

* [Souvik Sengupta](https://github.com/ssgUPC)
* [Anthony Simonet](https://github.com/asimonet)
