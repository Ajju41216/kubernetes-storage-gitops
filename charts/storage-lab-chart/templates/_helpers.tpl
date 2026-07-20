{{- define "storage-lab.name" -}}
storage-test
{{- end }}

{{- define "storage-lab.fullname" -}}
{{ .Release.Name }}-storage-test
{{- end }}

{{- define "storage-lab.labels" -}}
app.kubernetes.io/name: {{ include "storage-lab.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}