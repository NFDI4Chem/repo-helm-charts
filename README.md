#### This repository packages the [nmrxiv-app](https://github.com/NFDI4Chem/nmrxiv), [nmrxiv-doc](https://github.com/NFDI4Chem/nmrxiv-docs), [coconut-2.0](https://github.com/Steinbeck-Lab/coconut-2.0) and vibspecdb repositories application as Helm charts for Kubernetes and is published via [Github Pages](https://nfdi4chem.github.io/repo-helm-charts/).

## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```bash
helm repo add repo-helm-charts https://nfdi4chem.github.io/repo-helm-charts/
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
repo-helm-charts` to see the charts.

#### nmrXiv

Before you install [generate your own application key](https://stackoverflow.com/questions/33370134/when-to-generate-a-new-application-key-in-laravel) and provide that value in the .Values.appProperties.key property.

To install the nmrxiv-app chart:

    helm install my-nmrxiv-app repo-helm-charts/nmrxiv-app

To uninstall the chart:

    helm delete my-nmrxiv-app

#### nmrXiv-doc

To install the nmrxiv-doc chart:

    helm install my-nmrxiv-doc repo-helm-charts/nmrxiv-doc

To uninstall the chart:

    helm delete my-nmrxiv-doc
    
#### vibspecdb

To install the vibspecdb chart:

    helm install my-vibspecdb-app repo-helm-charts/vibspecdb

To uninstall the chart:

    helm delete my-vibspecdb-app
    

#### coconut-2.0

Before you install [generate your own application key](https://stackoverflow.com/questions/33370134/when-to-generate-a-new-application-key-in-laravel) and provide that value in the .Values.appProperties.key property.

To install the coconut-app chart:

    helm install my-coconut-app repo-helm-charts/coconut-app

To uninstall the chart:

    helm delete my-coconut-app

## Maintained by
This project is developed and maintained by the [NFDI4Chem partners](https://www.nfdi4chem.de/) at the [Friedrich Schiller University](https://www.uni-jena.de/en/) Jena, Germany. 
The code for this application is released under the [MIT license](https://opensource.org/licenses/MIT).


<p align="left"><a href="https://nfdi4chem.de/" target="_blank"><img src="https://www.nfdi4chem.de/wp-content/themes/wptheme/assets/img/logo.svg" width="50%" alt="NFDI4Chem Logo"></a></p>

## Acknowledgments

Funded by the [Deutsche Forschungsgemeinschaft (DFG, German Research Foundation)](https://www.dfg.de/) under the [National Research Data Infrastructure – NFDI4Chem](https://nfdi4chem.de/) – Projektnummer **441958208**.

<p align="left"><a href="https://www.dfg.de/" target="_blank"><img src="./public/img/dfg_logo_schriftzug_blau_foerderung_en.gif" width="50%" alt="DFG Logo"></a></p>

