{{/*
Expand the name of the chart.
*/}}
{{- define "coconut-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "coconut-app.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "coconut-app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "coconut-app.labels" -}}
helm.sh/chart: {{ include "coconut-app.chart" . }}
{{ include "coconut-app.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "coconut-app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "coconut-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "coconut-app.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "coconut-app.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Set chart labels for worker
*/}}
{{- define "coconut-app.workerLabels" -}}
app: {{ printf "%s-%s" .Release.Name "worker" | trunc 63 | trimSuffix "-" }}
release: {{ .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}


{{/*
Set chart labels for scheduler
*/}}
{{- define "coconut-app.schedulerLabels" -}}
app: {{ printf "%s-%s" .Release.Name "scheduler" | trunc 63 | trimSuffix "-" }}
release: {{ .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

