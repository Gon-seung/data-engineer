
#베이스 이미지로 쓸 이미지 이름을 지정
FROM node

# container의 work dir를 지정
WORKDIR /app

# host의 파일을 container 내부로 옮겨주는 명령어
# 첫번째 위치는 Host의 file system 
# 두번째 위치는 container의 file system
# 다만 명령어를 실행하는 파일은 제외됨
COPY . /app

# 실행할 명령어
RUN npm install

# 특정 포트를 노출할 것임을 문서화 하는 것
# 모범적인 사용법이지만 없어도 문제가 없음
EXPOSE 80

# 컨테이너가 시작될 때 실행할 명령어
CMD ["node", "server.js"]