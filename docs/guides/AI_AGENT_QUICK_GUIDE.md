# AI 에이전트 빠른 가이드

AI 에이전트와 효율적으로 협업하기 위한 3단계 구조 기반 프롬프트 가이드

## 🎯 핵심 원칙

AI 에이전트는 **3단계 구조**를 통해 프로젝트 컨텍스트를 빠르게 파악합니다:

1. **Story** (스토리) - 전체 방향성
2. **Continuity** (콘티) - 현재 상태
3. **Backup** (백업) - 완료 기록

## 📋 Story (스토리) - "무엇을 만들 것인가"

### 프롬프트 예시

```
"현재 진행상황 및 백로그 분석해줘"
"다음 Sprint 계획 세워줘"
"프로젝트 전체 흐름 파악해줘"
```

### 파악할 파일

- `docs/project-management/backlog.md` - 전체 백로그
- `docs/project-management/sprints/` - Sprint 계획들
- `docs/project-management/stories/` - 개별 Story들

### 예상 응답

- 프로젝트 전체 목표와 방향성
- 현재 Sprint 상태
- 다음 Sprint 계획
- 전체 백로그 우선순위

## 🔄 Continuity (콘티) - "어떻게 만들 것인가"

### 프롬프트 예시

```
"현재 작업 컨텍스트 파악해줘"
"지금 어디쯤 와있어?"
"다음 작업 뭐야?"
"현재 상태 요약해줘"
```

### 파악할 파일

- `docs/project-management/README.md` - 프로젝트 개요
- `docs/project-management/current-status.md` - 시스템 상태
- `docs/guides/AI_AGENT_QUICK_GUIDE.md` - 이 파일

### 예상 응답

- 현재 진행 중인 작업
- 다음 단계 계획
- 시스템 현재 상태
- 작업 우선순위

## 💾 Backup (백업) - "무엇을 완료했는가"

### 프롬프트 예시

```
"완료된 작업 리뷰해줘"
"진척도 어때?"
"백로그 업데이트해줘"
"완료 기록 정리해줘"
```

### 파악할 파일

- `docs/project-management/progress-tracking.md` - 완료 기록
- `docs/project-management/backlog.md` - 완료 상태 표시

### 예상 응답

- 완료된 작업 목록
- 진행률 통계
- 다음 작업과의 연결점
- 완료 기록 요약

## 🚀 실전 사용법

### 1. 프로젝트 시작 시

```
"현재 진행상황 및 백로그 분석해줘"
```

→ Story + Continuity + Backup 전체 조회

### 2. 작업 시작 전

```
"현재 작업 컨텍스트 파악해줘"
```

→ Continuity 중심 조회

### 3. 작업 완료 후

```
"완료 기록 업데이트해줘"
```

→ Backup 업데이트

### 4. Sprint 계획 시

```
"다음 Sprint 계획 세워줘"
```

→ Story 중심 조회

## 📁 파일 구조 이해

```
docs/project-management/
├── README.md              # Continuity - 현재 상태
├── current-status.md      # Continuity - 시스템 상태
├── backlog.md             # Story + Backup - 전체 계획과 완료 기록
├── progress-tracking.md   # Backup - 완료 기록
├── sprints/               # Story - Sprint 계획들
└── stories/               # Story - 개별 Story들
```

## 💡 팁과 모범 사례

### 1. 구체적인 요청하기

```
❌ "프로젝트 상황 알려줘"
✅ "현재 Sprint 5 진행 상황과 다음 Sprint 계획 알려줘"
```

### 2. 컨텍스트 유지하기

```
❌ 매번 처음부터 설명 요청
✅ "이전 작업 이어서 계속 진행해줘"
```

### 3. 단계별 접근하기

```
1단계: "전체 상황 및 백로그 파악해줘" (Story)
2단계: "현재 작업 컨텍스트 알려줘" (Continuity)
3단계: "오늘 작업 내용 백로그에 업데이트해줘" (Backup)
```

## 🔧 문제 해결

### AI가 컨텍스트를 잃었을 때

```
"docs/project-management/README.md 파일을 읽고 현재 상황 파악해줘"
```

### 작업 연결이 끊어졌을 때

```
"progress-tracking.md와 backlog.md를 확인해서 작업 연속성 파악해줘"
```

### 우선순위가 불분명할 때

```
"backlog.md에서 P0, P1 작업들을 확인하고 다음 작업 우선순위 정해줘"
```

## 📚 관련 문서

- [프로젝트 README](../README.md) - 전체 시스템 개요
- [영화 제작 방식 차용 설명](INSPIRATION.md) - 배경 이론
- [템플릿](../../templates/) - 재사용 가능한 템플릿들
- [예제 프로젝트](../../examples/) - 실제 사용 예시

---

이 가이드를 통해 AI 에이전트와 더 효율적으로 협업하세요! 🚀
