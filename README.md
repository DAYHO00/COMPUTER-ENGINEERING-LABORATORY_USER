# Digital Logic Design Lab

Verilog HDL과 FPGA를 활용한  디지털 논리회로 및 순차회로 설계 실험 기록

컴퓨터공학실험 II 수업에서 1주차부터 14주차까지 수행한 모든 실험 내용을 정리한 저장소입니다.  
각 실험은 Verilog HDL로 직접 설계되었으며, Simulation과 FPGA 보드 실험을 통해 동작을 검증했습니다.

본 저장소에는 전체 소스 코드는 업로드하지 않고,각 주차별 예비보고서 / 결과보고서 중심으로 실험 과정과 결과를 정리하였습니다.  
(보고서 내부에 핵심 Verilog 코드 및 설계 설명 포함)

---

## 목차

- [주요 기능](#-주요-기능)
- [기술 스택](#-기술-스택)
- [프로젝트 구조](#-프로젝트-구조)
- [시작하기](#-시작하기)
- [핵심 기능](#-핵심-기능)
- [주차별 실험 내용](#-주차별-실험-내용)
- [실험 결과 요약](#-실험-결과-요약)
- [코드 공개 범위](#-코드-공개-범위)

---

## 🎯 주요 기능

### 실시간 자세 분석
- MediaPipe Pose Landmarker를 활용한 33개 관절 포인트 추적
- 3D 공간에서의 정확한 관절 각도 계산
- 코사인 유사도 실시간 유사도 측정 (0-100점)

### 다양한 운동 방식
- **샘플 영상**: 추천 요가 동작 영상 제공
- **화면 공유**: 유튜브 영상 활용 운동
- **웹캠 연동**: 실시간 자세 비교 및 피드백

### 자세 분류 시스템
- 40가지 요가 자세 자동 인식 (Plank, Warrior, Tree, Bridge 등)
- 좌우 반전 자동 대응
- 벡터화된 자세 데이터 기반 분류 (임계값 90점)

### 운동 기록 관리
- 타임라인별 자세 분석 및 점수 기록
- 필터링 및 검색 기능
- 상세 운동 내역 조회

---

## 🛠 기술 스택

### Frontend
```
Framework: Next.js 15 (App Router)
Language: TypeScript
UI: Tailwind CSS, Ant Design, Framer Motion
State: Zustand
AI/ML: MediaPipe Tasks Vision
```

### Backend
```
Framework: Spring Boot 3.3.2
Language: Java 17
Database: MySQL
Authentication: JWT
ORM: JPA/Hibernate
```

### Infrastructure
```
Containerization: Docker
Cloud: AWS (ECR, EC2, S3)
CI/CD: GitHub Actions
```

---

## 📁 프로젝트 구조

```
samadhi/
├── frontend/
│   ├── app/
│   │   ├── (with-navbar)/
│   │   │   ├── home/              # 메인 페이지
│   │   │   ├── ready/             # 운동 준비 (4단계)
│   │   │   └── record/            # 운동 기록
│   │   └── (without-navbar)/
│   │       ├── auth/              # 로그인/회원가입
│   │       └── workout/           # 실시간 운동
│   ├── components/
│   │   ├── ready/                 # 운동 준비 UI
│   │   ├── workout/               # 운동 중 UI
│   │   ├── video/                 # 비디오 재생
│   │   ├── webcam/                # 웹캠 처리
│   │   └── timeline/              # 타임라인 클리퍼
│   ├── lib/
│   │   ├── mediapipe/
│   │   │   └── angle-calculator.ts    # 관절 각도 계산
│   │   └── poseClassifier/
│   │       └── pose-classifier-with-vectorized.ts
│   └── store/                     # Zustand 상태 관리
│
└── backend/
    └── src/main/java/com/capstone/samadhi/
        ├── config/                # JWT, Security, S3, CORS
        ├── security/              # 인증/인가
        │   ├── jwt/              # JWT 필터 및 유틸
        │   └── service/          # UserDetailsService
        ├── record/               # 운동 기록
        │   ├── entity/           # Record, TimeLine
        │   └── service/          # 기록 저장/조회
        ├── video/                # 샘플 영상
        └── common/               # 공통 유틸 (S3, ResponseDto)
```

---

## 🚀 시작하기

### 사전 요구사항
- Node.js 18+
- Java 17+
- MySQL 8.0+
- Docker (선택)

### Frontend 설정

```bash
cd frontend
npm install

# 환경 변수 설정 (.env.local)
NEXT_PUBLIC_API_URL=http://localhost:8888

npm run dev
```

### Backend 설정

```bash
cd backend

# 환경 변수 설정 (.env)
DB_HOST=jdbc:mysql://localhost:3306/samadhi
DB_USERNAME=root
DB_PASSWORD=your_password
SECURITY_SECRET_KEY=your_secret_key
S3_ACCESS_KEY=your_access_key
S3_SECRET_KEY=your_secret_key
DEPLOY=local

./gradlew bootRun
```

### Docker 배포

```bash
# 백엔드 이미지 빌드
docker build -t samadhi-api ./backend

# Docker Compose 실행
cd backend
docker-compose up -d
```

---

## 💡 핵심 기능

### 1. 자세 추적 및 각도 계산

```typescript
// 33개 관절 포인트에서 주요 각도 계산
calculateAllAngles(landmarks: Landmark[]): JointAngles
```

**계산 각도**
- 팔: 팔꿈치, 어깨 (좌/우)
- 다리: 무릎, 엉덩이 (좌/우)
- 몸통: 척추, 정렬
- 손목, 발목, 목

**특징**
- 3D 공간 벡터 기반 계산
- Dead Zone 필터 (±2도 떨림 방지)
- Visibility 필터링 (임계값 0.5)

### 2. 유사도 측정

```typescript
CalculateSimilarity(P1: number[], P2: number[], lambda: 1.0): number
```

- **코사인 유사도**: 자세 방향성 비교
- **결과**: 0-100점 범위

### 3. 자세 분류

```typescript
classifyPoseWithVectorized(vectorized: number[]): string
```

### 4. 타임라인 기록

```typescript
type Timeline = {
  pose: string;
  startTime: number;
  endTime: number;
  similarity: number;
};
```

운동 중 자세별 구간을 자동 기록하고 평균 유사도를 계산합니다.

---

## 🔄 데이터 흐름

```
웹캠/비디오 입력
    ↓
MediaPipe Pose Landmarker
    ↓
관절 좌표 추출 (33개)
    ↓
벡터화 및 정규화
    ↓
자세 분류 + 유사도 계산
    ↓
실시간 피드백
    ↓
타임라인 기록
    ↓
서버 저장 (MySQL + S3)
```


---


## 🚀 배포

### GitHub Actions CI/CD

```yaml
# main 브랜치 push 시 자동 배포
- Docker 이미지 빌드
- AWS ECR 푸시
- EC2 SSH 접속
- Docker Compose 재시작
```

### 환경 설정

**Production**
- `DEPLOY=prod` 환경변수 설정
- SameSite=None, Secure Cookie 사용
- AWS RDS MySQL
- AWS S3 파일 저장



