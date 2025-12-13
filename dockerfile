# 1. Python 공식 이미지 사용 (예: 3.11 버전)  
FROM python:3.11-slim  
  
# 2. 작업 디렉토리 생성 및 이동  
WORKDIR /app  
  
# 3. 소스 코드 복사  
COPY main.py .  
  
# 4. 컨테이너 실행 시 Python 코드 실행  
CMD ["python", "quiz.py"] 