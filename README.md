# AI Workflow Guide

[![npm version](https://badge.fury.io/js/ai-workflow-guide.svg)](https://badge.fury.io/js/ai-workflow-guide)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/Woo7i/ai-workflow-guide.svg)](https://github.com/Woo7i/ai-workflow-guide/stargazers)

AI 에이전트와 협업하는 개발자를 위한 컨텍스트 연속성 기반 프로젝트 관리 시스템

> 🎬 **영화 제작 방식**을 차용한 혁신적인 프로젝트 관리 프레임워크

## 핵심 개념: 3단계 구조

### Story (스토리) - 무엇을 만들 것인가

전체 프로젝트의 방향성과 목표. 작업이 변경되어도 전체 흐름을 유지.

### Continuity (콘티) - 어떻게 만들 것인가

현재 위치와 다음 작업. 작업 순서와 연결 관계를 한눈에 파악.

### Backup (백업) - 무엇을 완료했는가

완료된 작업 기록. 다음 작업과의 연결성 보장.

## 주요 기능

- **단일 진입점**: 모든 정보를 한 곳에서 접근
- **AI 최적화**: AI 에이전트가 빠르게 컨텍스트 파악
- **컨텍스트 연속성**: 작업 흐름을 잃지 않음
- **체계적 백로그**: 완료/진행/계획 명확히 구분

## 영감의 출처

이 시스템은 영화 제작 방식에서 영감을 받았습니다:

- **스토리라인** (시나리오) → **Story**: 전체 영화의 흐름과 방향성
- **그림콘티** (촬영 계획) → **Continuity**: 현재 촬영 위치와 다음 컷
- **현장편집** (촬영 일지) → **Backup**: 완료된 촬영 기록과 연결성

자세한 내용은 [INSPIRATION.md](docs/guides/INSPIRATION.md)를 참조하세요.

## 🚀 빠른 설치

### 방법 1: 설치 스크립트 사용 (권장)

```bash
# 저장소 클론
git clone https://github.com/your-username/ai-workflow-guide.git
cd ai-workflow-guide

# 프로젝트에 설치
./install.sh /path/to/your-project
```

### 방법 2: NPM 패키지 (예정)

#### NPM

```bash
npm install -g ai-workflow-guide
ai-workflow-install /path/to/your-project
```

#### Yarn

```bash
yarn global add ai-workflow-guide
ai-workflow-install /path/to/your-project
```

#### PNPM

```bash
pnpm add -g ai-workflow-guide
ai-workflow-install /path/to/your-project
```

### 방법 3: 수동 설치

```bash
# 프로젝트 폴더 생성
mkdir your-project
cd your-project

# AI Workflow Guide 구조 복사
cp -r /path/to/ai-workflow-guide/templates/project-management/* docs/project-management/
```

### 2. AI 에이전트 사용

AI 에이전트에게 다음과 같이 요청하세요:

- **Story 파악**: "현재 진행상황 및 백로그 분석해줘"
- **Continuity 파악**: "현재 작업 컨텍스트 파악해줘"
- **Backup 확인**: "완료된 작업 리뷰해줘"

자세한 프롬프트 가이드는 [AI_AGENT_QUICK_GUIDE.md](docs/guides/AI_AGENT_QUICK_GUIDE.md)를 참조하세요.

## 프로젝트 구조

```
your-project/
├── docs/
│   └── project-management/
│       ├── README.md              # Continuity - 현재 상태
│       ├── current-status.md      # Continuity - 시스템 상태
│       ├── backlog.md             # Story + Backup - 전체 계획과 완료 기록
│       ├── progress-tracking.md   # Backup - 완료 기록
│       ├── sprints/               # Story - Sprint 계획
│       └── stories/               # Story - 개별 Story
└── docs/guides/
    ├── AI_AGENT_QUICK_GUIDE.md    # Continuity - 빠른 참조
    └── INSPIRATION.md             # 영화 제작 방식 차용 설명
```

## 문서 구조

### Story (스토리)

- `backlog.md`: 전체 프로젝트 백로그
- `sprints/`: Sprint 계획 문서들
- `stories/`: 개별 Story 문서들

### Continuity (콘티)

- `README.md`: 프로젝트 개요 및 현재 상태
- `current-status.md`: 시스템 현재 상태
- `AI_AGENT_QUICK_GUIDE.md`: AI 에이전트 빠른 참조 가이드

### Backup (백업)

- `progress-tracking.md`: 완료된 작업 추적
- `backlog.md`: 완료 상태 표시

## 예제

실제 프로젝트 예제는 [examples/](examples/) 폴더를 참조하세요.

## 기여하기

기여 방법은 [CONTRIBUTING.md](CONTRIBUTING.md)를 참조하세요.

## 라이선스

MIT License - 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.

## 더 알아보기

- [📖 설치 가이드](INSTALLATION.md) - 상세한 설치 방법
- [🤖 AI 에이전트 빠른 가이드](docs/guides/AI_AGENT_QUICK_GUIDE.md)
- [🎬 영화 제작 방식 차용 설명](docs/guides/INSPIRATION.md)
- [📋 템플릿](templates/)
- [💡 예제 프로젝트](examples/)
