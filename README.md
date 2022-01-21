
#### NOTE - The work for this helm-chart is still in progress.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```bash
  helm repo add nmrxiv-helm-chart https://nfdi4chem.github.io/nmrxiv-helm-chart/
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
nmrxiv-helm-chart` to see the charts.

To install the nmrxiv-helm-chart chart:

    helm install my-nmrxiv-app nmrxiv-helm-chart/nmrxiv-app

To uninstall the chart:

    helm delete my-nmrxiv-app