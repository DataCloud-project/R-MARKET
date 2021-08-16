<p align="center"><img width=50% src="https://raw.githubusercontent.com/DataCloud-project/toolbox/master/docs/img/datacloud_logo.png"></p>&nbsp;

[![GitHub Issues](https://img.shields.io/github/issues/DataCloud-project/R-MARKET.svg)](https://github.com/DataCloud-project/R-MARKET/issues)
[![License](https://img.shields.io/badge/license-Apache2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

# R-MARKET

R-MARKET provides a decentralized trusted marketplace for resources (software appliances and hardware devices) spread across the Computing Continuum. The tool leverages hybrid permission and permissionless blockchain based on the Ethereum technology to federate, search and provision available resources for deploying big data pipelines. In addition, the tool maintains the history of transactions, the reputation of resource providers and consumers and executes payments for services as well as compensations for SLO violations.
R-MARKET acts as an intermediary between the cloud resources from the Computing Continuum, ADA-PIPE and DEP-PIPE. In the below the figure shows the high-level architecture of the tool: the resources (Workers) are grouped in Worker Pools and listed in R-MARKET by their providers. R-MARKET provides ADA-PIPE with an API for querying resources that match a semantic description. Based on the returned list of Work Orders, ADA-PIPE signs and transmits a Request Order to the PoCo smart contracts, which will perform a series of checks, provision the Workers and hand their control over to DEP-PIPE.
R-MARKET mixes two sets of interfaces: the low-level smart contracts APIs are used for critical operations (e.g., sending Request Orders), while high-level REST APIs are used for off-chain operations (e.g., querying the Order Book).


![alt text](https://raw.githubusercontent.com/DataCloud-project/R-MARKET/main/docs/R-MARKET.png)
