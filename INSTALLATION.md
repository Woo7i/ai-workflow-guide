# AI Workflow Guide 설치 가이드

AI Workflow Guide를 프로젝트에 설치하는 방법을 안내합니다.

## 🚀 빠른 설치

### 방법 1: Git Clone + 설치 스크립트

```bash
# 저장소 클론
git clone https://github.com/your-username/ai-workflow-guide.git
cd ai-workflow-guide

# 프로젝트에 설치 (Unix/Linux/macOS)
./install.sh /path/to/your-project

# 또는 Windows
install.bat C:\path\to\your-project

# 또는 Node.js
node install.js /path/to/your-project
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

## 📋 시스템 요구사항

- **운영체제**: Windows, macOS, Linux
- **Node.js**: 14.0.0 이상 (Node.js 설치 방법 사용 시)
- **Git**: 2.0.0 이상 (Git Clone 방법 사용 시)

## 🔧 상세 설치 방법

### 1. Git Clone 방법

#### 1-1. 저장소 클론

```bash
git clone https://github.com/your-username/ai-workflow-guide.git
cd ai-workflow-guide
```

#### 1-2. 설치 스크립트 실행

**Unix/Linux/macOS:**

```bash
# 실행 권한 부여
chmod +x install.sh

# 프로젝트에 설치
./install.sh /path/to/your-project
```

**Windows:**

```cmd
install.bat C:\path\to\your-project
```

**Node.js (모든 플랫폼):**

```bash
node install.js /path/to/your-project
```

### 2. NPM 패키지 방법 (예정)

#### NPM 사용

```bash
# 전역 설치
npm install -g ai-workflow-guide

# 프로젝트에 설치
ai-workflow-install /path/to/your-project
```

#### Yarn 사용

```bash
# 전역 설치
yarn global add ai-workflow-guide

# 프로젝트에 설치
ai-workflow-install /path/to/your-project
```

#### PNPM 사용

```bash
# 전역 설치
pnpm add -g ai-workflow-guide

# 프로젝트에 설치
ai-workflow-install /path/to/your-project
```

### 3. 수동 설치

#### 3-1. 디렉토리 구조 생성

```bash
mkdir -p your-project/docs/project-management/sprints
mkdir -p your-project/docs/project-management/stories/completed
mkdir -p your-project/docs/project-management/stories/current
mkdir -p your-project/docs/guides
```

#### 3-2. 템플릿 파일 복사

```bash
# 프로젝트 관리 템플릿
cp templates/project-management/*.md your-project/docs/project-management/

# 가이드 문서
cp docs/guides/*.md your-project/docs/guides/
```

#### 3-3. 설정 파일 생성

`.ai-workflow-config` 파일을 프로젝트 루트에 생성:

```ini
PROJECT_NAME="your-project"
PROJECT_TYPE="software"
WORKFLOW_VERSION="1.0.0"
INSTALLED_DATE="2025-01-25"

STORY_PATH="docs/project-management/backlog.md"
CONTINUITY_PATH="docs/project-management/current-status.md"
BACKUP_PATH="docs/project-management/progress-tracking.md"

AI_PROMPTS="docs/guides/AI_AGENT_QUICK_GUIDE.md"
```

## 📁 설치 후 생성되는 구조

```
your-project/
├── docs/
│   ├── project-management/
│   │   ├── README.md                    # 프로젝트 개요
│   │   ├── backlog.md                   # 전체 백로그 (Story)
│   │   ├── current-status.md            # 현재 상태 (Continuity)
│   │   ├── progress-tracking.md         # 완료 기록 (Backup)
│   │   ├── sprints/
│   │   │   └── sprint-template.md       # Sprint 템플릿
│   │   └── stories/
│   │       ├── story-template.md        # Story 템플릿
│   │       ├── completed/               # 완료된 Story들
│   │       └── current/                 # 진행 중인 Story들
│   └── guides/
│       ├── AI_AGENT_QUICK_GUIDE.md      # AI 에이전트 가이드
│       ├── QUALITY_ASSURANCE.md         # 품질 검증 가이드
│       ├── IMPORTANT_NOTES.md           # 중요 주의사항
│       └── INSPIRATION.md               # 영감의 출처
├── .ai-workflow-config                  # 설정 파일
└── README.md                            # 업데이트된 README
```

## 🎯 설치 후 첫 사용법

### 1. AI 에이전트에게 프로젝트 상황 파악 요청

```
"현재 진행상황 및 백로그 분석해줘"
```

### 2. 백로그 작성

`docs/project-management/backlog.md` 파일을 열어 프로젝트의 Story들을 작성합니다.

### 3. 현재 상태 업데이트

`docs/project-management/current-status.md` 파일에서 현재 진행 상황을 업데이트합니다.

### 4. 완료 기록 관리

`docs/project-management/progress-tracking.md` 파일에서 완료된 작업들을 추적합니다.

## 🔧 설정 커스터마이징

### .ai-workflow-config 파일 수정

프로젝트에 맞게 설정을 조정할 수 있습니다:

```ini
# 프로젝트 정보
PROJECT_NAME="my-awesome-project"
PROJECT_TYPE="web-application"  # software, web-application, mobile-app, etc.

# 파일 경로 커스터마이징
STORY_PATH="docs/backlog/backlog.md"
CONTINUITY_PATH="docs/status/current.md"
BACKUP_PATH="docs/progress/tracking.md"

# AI 프롬프트 힌트
AI_PROMPTS="docs/guides/ai-guide.md"
```

## 🚨 문제 해결

### 설치 스크립트 실행 권한 오류 (Unix/Linux/macOS)

```bash
chmod +x install.sh
```

### Node.js 버전 오류

```bash
# Node.js 버전 확인
node --version

# 14.0.0 이상이어야 함
# 업그레이드가 필요한 경우 nvm 사용
nvm install 16
nvm use 16
```

### 파일 복사 권한 오류

```bash
# 관리자 권한으로 실행 (필요한 경우)
sudo ./install.sh /path/to/your-project
```

### Windows에서 스크립트 실행 오류

PowerShell에서 실행 정책을 변경:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## 📚 추가 리소스

- [AI 에이전트 빠른 가이드](docs/guides/AI_AGENT_QUICK_GUIDE.md)
- [품질 검증 가이드](docs/guides/QUALITY_ASSURANCE.md)
- [중요 주의사항](docs/guides/IMPORTANT_NOTES.md)
- [영화 제작 방식 차용 설명](docs/guides/INSPIRATION.md)

## 🤝 기여하기

설치 과정에서 문제가 발생하거나 개선 사항이 있다면 [이슈를 생성](https://github.com/your-username/ai-workflow-guide/issues)해 주세요.

---

**마지막 업데이트**: 2025-01-25
