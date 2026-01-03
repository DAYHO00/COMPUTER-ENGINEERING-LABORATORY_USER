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

---

## 🎯 주요 기능

- Verilog HDL 기반 디지털 논리 회로 설계
- 조합논리 / 순차논리 회로 직접 구현
- Testbench 기반 Simulation 검증
- FPGA 보드 다운로드 및 실제 동작 확인
- Finite State Machine(Moore / Mealy) 기반 Sequence Detector 설계

---

## 🛠 기술 스택

```
HDL Language : Verilog
EDA Tool : Xilinx Vivado
Target : FPGA Board (Artix-7)
Verification : Simulation + FPGA Hardware Test
```

---

## 📁 프로젝트 구조

```
├── Digital-Logic-Design-Lab/
├── ├── 1주차/
├── │ ├── 예비보고서.pdf
├── │ └── 결과보고서.pdf
├── ├── 2주차/
├── │ ├── 예비보고서.pdf
├── │ └── 결과보고서.pdf
├── ├── ...
├── ├── 14주차/
├── │ ├── 예비보고서.pdf
├── │ └── 결과보고서.pdf
└── └── README.md
```

---

## 🚀 시작하기

### 사전 요구사항
- Xilinx Vivado
- FPGA Board
- Verilog HDL 기본 문법 이해

### 실험 진행 방식

```
이론 분석
↓
Verilog 설계
↓
Simulation (Testbench)
↓
FPGA 다운로드
↓
결과 분석 및 보고서 작성
```
---

## 💡 핵심 기능

### 1. 조합 논리 회로 설계
- AND / OR / NOT / NAND / NOR / XOR Gate
- De Morgan 법칙 검증
- Boolean Function 최소화 (K-map)

### 2. Arithmetic Circuit
- Half / Full Adder
- Parallel Adder / Subtractor
- BCD Adder
- Overflow 및 Carry 분석

### 3. Decoder / Encoder / MUX
- Decoder / Encoder
- Priority Encoder
- Multiplexer / Demultiplexer

### 4. 순차 논리 회로
- Latch / Flip-Flop (RS, JK, D, T)
- Counter (Up / Down / Decade)
- Shift Register / Ring Counter

### 5. Finite State Machine
- Moore Machine
- Mealy Machine
- Sequence Detector (1101, 10101)

---

## 🧠 주차별 실험 내용

### 1주차 – FPGA 개요 및 개발 환경
- FPGA 구조 및 설계 흐름 이해

### 2주차 – Verilog 기초
- assign / always
- blocking / non-blocking

### 3주차 – 기본 Logic Gate
- AND / OR / NOT Gate

### 4주차 – 확장 Logic Gate
- NAND / NOR / XOR / AOI Gate

### 5주차 – Boolean Logic
- De Morgan
- Comparator 설계

### 6주차 – Adder / Subtractor
- Half / Full Adder
- Code Converter

### 7주차 – Parity & Error Detection
- Parity Generator / Checker

### 8주차 – 7-Segment Decoder
- BCD → 7-Segment

### 9주차 – Decoder / Encoder / MUX
- Priority Encoder
- Multiplexer

### 10주차 – Arithmetic Circuit 심화
- Ripple Carry Adder
- BCD Adder

### 11주차 – Flip-Flop
- RS / JK / D / T Flip-Flop

### 12주차 – Counter
- 동기 / 비동기 Counter

### 13주차 – Shift Register
- Ring Counter
- Up/Down Counter

### 14주차 – FSM
- Moore / Mealy
- Sequence Detector

---

## 📊 실험 결과 요약

- Simulation 결과와 FPGA 동작 결과가 모두 일치
- Verilog 코드가 실제 하드웨어 동작으로 연결되는 과정 이해
- 조합논리 → 순차논리 → FSM으로 이어지는 설계 흐름 체득

---



