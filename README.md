# 알쏭달쏭

SSAFY 7기 특화 빅데이터 추천 프로젝트

> 사용자의 일기 내용을 분석하여 그날의 감정에 맞는 플레이리스트를 추천해주는 서비스

## 목차

- [프로젝트 개요](#프로젝트-개요)
- [프로젝트 설계](#프로젝트-설계)
- [기술스택](#기술스택)

</br>

# 프로젝트 개요

## 소개

> 사람들은 하루의 마무리를 하면서 일기를 쓰게 됩니다. 어떤 날은 날아갈 것처럼 기분 좋은 날, 또 다른 날은 발걸음도 무거운 우울한 날일 수 있습니다. 기존의 서비스들은 일기만을 기록하지만, 저희는 여기에 그날의 기분에 맞는 음악을 들려주고자 합니다. 그렇게 해서 하루에 대한 기억이 더 다채로워지게 만들고자 이 서비스를 기획했습니다.

## 목표

사용자는 자신의 취향을 바탕으로 그 날의 기분에 적합한 노래를 추천 받을 수 있습니다.

## 서비스 화면

1. 일기 작성
2. 스티커
3. 음악 추천

[UCC]()

</br>

# 프로젝트 설계

## 와이어프레임

![와이어프레임](/uploads/766be01e94fc7bf43609f319afb75ab7/와이어프레임.png)

## ERD

![erd](/uploads/d8c453c24f51714336813e78dc74a5bd/erd.png)

## 시스템 아키텍처

![시스템_아키텍처](/uploads/6fdb14847750902c1ebd1ae396c4ca0c/시스템_아키텍처.png)

## API 명세서

</br>

# 기술스택

## FE

- React 18.2.0
- react-bootstrap 2.5.0 
- react-dom 18.2.0 
- react-router-dom 6.4.0 
- moment.js 2.29.4 
- styled-components 5.3.5 

## BE

- python 3.7
- Django 3.2.12
- Djangorestframework
- Djangorestframework-simplejwt
- Oauth2
- Amazone S3

## DATA

- Jupyter notebook
- Python 3.7
- Django 3.2.12