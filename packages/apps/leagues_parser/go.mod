module riccardotornesello.it/sharedtelemetry/iracing/leagues_parser

go 1.23.2

require (
	cloud.google.com/go/pubsub v1.45.3
	github.com/joho/godotenv v1.5.1
	gorm.io/gorm v1.25.12
	riccardotornesello.it/sharedtelemetry/iracing/events_models v0.0.0-00010101000000-000000000000
	riccardotornesello.it/sharedtelemetry/iracing/gorm_utils v0.0.0-00010101000000-000000000000
)

replace (
	riccardotornesello.it/sharedtelemetry/iracing/cloudrun_utils => ../../libs/cloudrun_utils
	riccardotornesello.it/sharedtelemetry/iracing/events_models => ../../libs/events_models
	riccardotornesello.it/sharedtelemetry/iracing/gorm_utils => ../../libs/gorm_utils
	riccardotornesello.it/sharedtelemetry/iracing/irapi => ../../libs/irapi
)

require (
	ariga.io/atlas-go-sdk v0.2.3 // indirect
	ariga.io/atlas-provider-gorm v0.5.0 // indirect
	cloud.google.com/go v0.116.0 // indirect
	cloud.google.com/go/auth v0.11.0 // indirect
	cloud.google.com/go/auth/oauth2adapt v0.2.6 // indirect
	cloud.google.com/go/compute/metadata v0.5.2 // indirect
	cloud.google.com/go/iam v1.2.2 // indirect
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/go-logr/logr v1.4.2 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-sql-driver/mysql v1.7.0 // indirect
	github.com/golang-sql/civil v0.0.0-20220223132316-b832511892a9 // indirect
	github.com/golang-sql/sqlexp v0.1.0 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/google/s2a-go v0.1.8 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.3.4 // indirect
	github.com/googleapis/gax-go/v2 v2.14.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20231201235250-de7065d80cb9 // indirect
	github.com/jackc/pgx/v5 v5.5.5 // indirect
	github.com/jackc/puddle/v2 v2.2.1 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/jinzhu/now v1.1.5 // indirect
	github.com/lib/pq v1.10.9 // indirect
	github.com/mattn/go-sqlite3 v1.14.17 // indirect
	github.com/microsoft/go-mssqldb v1.6.0 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.54.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.54.0 // indirect
	go.opentelemetry.io/otel v1.29.0 // indirect
	go.opentelemetry.io/otel/metric v1.29.0 // indirect
	go.opentelemetry.io/otel/trace v1.29.0 // indirect
	golang.org/x/crypto v0.29.0 // indirect
	golang.org/x/net v0.31.0 // indirect
	golang.org/x/oauth2 v0.24.0 // indirect
	golang.org/x/sync v0.9.0 // indirect
	golang.org/x/sys v0.27.0 // indirect
	golang.org/x/text v0.20.0 // indirect
	golang.org/x/time v0.8.0 // indirect
	google.golang.org/api v0.210.0 // indirect
	google.golang.org/genproto v0.0.0-20241118233622-e639e219e697 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20241113202542-65e8d215514f // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20241118233622-e639e219e697 // indirect
	google.golang.org/grpc v1.67.1 // indirect
	google.golang.org/protobuf v1.35.2 // indirect
	gorm.io/driver/mysql v1.5.1 // indirect
	gorm.io/driver/postgres v1.5.11 // indirect
	gorm.io/driver/sqlite v1.5.2 // indirect
	gorm.io/driver/sqlserver v1.5.2 // indirect
)
