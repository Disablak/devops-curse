{{- define "disablak-chart.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "disablak-chart.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{- define "disablak-chart.labels" -}}
app.kubernetes.io/name: {{ include "disablak-chart.name" . }}
helm.sh/chart: {{ include "disablak-chart.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}