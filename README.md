#### This repository packages the [nmrxiv-app](https://github.com/NFDI4Chem/nmrxiv), [nmrxiv-doc](https://github.com/NFDI4Chem/nmrxiv-docs) and vibspecdb repositories application as Helm charts for Kubernetes and is published via [Github Pages](https://nfdi4chem.github.io/repo-helm-charts/).

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

To install the nmrxiv-app chart:

    helm install my-nmrxiv-app repo-helm-charts/nmrxiv-app

To uninstall the chart:

    helm delete my-nmrxiv-app

#### nmrXiv-doc

Before you install generate your own app key and provide that value in the .Values.appProperties.key property.

To install the nmrxiv-doc chart:

    helm install my-nmrxiv-doc repo-helm-charts/nmrxiv-doc

To uninstall the chart:

    helm delete my-nmrxiv-doc
    
#### vibspecdb

To install the vibspecdb chart:

    helm install my-vibspecdb-app repo-helm-charts/vibspecdb

To uninstall the chart:

    helm delete my-vibspecdb-app