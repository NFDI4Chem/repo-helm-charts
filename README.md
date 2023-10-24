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
    
#### coconut-2.0

Before you install [generate your own application key](https://stackoverflow.com/questions/33370134/when-to-generate-a-new-application-key-in-laravel) and provide that value in the .Values.appProperties.key property.

To install the coconut-app chart:

    helm install my-coconut-app repo-helm-charts/coconut-app

To uninstall the chart:

    helm delete my-coconut-app

#### cheminformatics-microservice

To install the cheminformatics-microservice chart:

    helm install my-cheminf-app repo-helm-charts/cheminformatics-microservice

To uninstall the chart:

    helm delete my-cheminf-app