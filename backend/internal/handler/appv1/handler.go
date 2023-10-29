package appv1

import (
	appv1 "github.com/ishihaya/lateral-thinking-backend/internal/handler/proto/app/v1"
	"github.com/ishihaya/lateral-thinking-backend/usecase"
	"google.golang.org/grpc"
	"google.golang.org/grpc/health"
	healthpb "google.golang.org/grpc/health/grpc_health_v1"
	"google.golang.org/grpc/reflection"
)

type handler struct {
	appv1.UnimplementedAppServiceServer
	puzzleUsecase usecase.PuzzleUsecase
}

func NewHandler(
	grpcServer *grpc.Server,
	puzzleUsecase usecase.PuzzleUsecase,
) (*handler, error) {
	h := &handler{
		puzzleUsecase: puzzleUsecase,
	}
	healthSrv := health.NewServer()
	healthpb.RegisterHealthServer(grpcServer, healthSrv)
	appv1.RegisterAppServiceServer(grpcServer, h)
	sn := appv1.AppService_ServiceDesc.ServiceName
	healthSrv.SetServingStatus(sn, healthpb.HealthCheckResponse_SERVING)
	reflection.Register(grpcServer)

	return h, nil
}
