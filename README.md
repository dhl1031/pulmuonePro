

<h2>Pulmuone Project</h2>

<div align=center>
  <img width="100%" alt="풀무원메인1" src="https://github.com/dhl1031/pulmuonePro/assets/141328665/66ed0c3f-837f-433d-aeec-7c16c9ee1155">
</div>

<!-- 프로젝트 소개 -->
## 프로젝트 소개
풀무원 녹즙 사이트 프로젝트 ( 2023/11/04 ~ 2023/11/22 )<br>
풀무원 녹즙은 매일배송과 택배배송으로 녹즙을 구매할 수 있는 쇼핑몰 사이트 입니다.<br>
맞춤 큐레이션을 통해서 구매자에게 맞는 녹즙 추천이 가능합니다.<br>
<br>
<br>
<br>

## 팀 구성 (6명)
고경림, 김정주, 박민석, 신종혁, 이동현, 이지현
<br>
<br>


## Environment

#### Skills
- JDK-11 (JAVA)
- Tomcat server 8.5v
- Oracle 11g
- ojdbc6
- Jsp & Servlet
- javascript
- jQuery
- html5 & css3

#### Tools
- Eclipse
- exERD
- Draw.io
- Github

<br>
<br>
<br>

## ERD
![Frame 1](https://github.com/dhl1031/pulmuonePro/assets/141328665/e7d926ee-72e6-4ea8-8b1f-13b16951c3a2)
<br>
<br>
<br>


## 폴더구조
```
└─main
    ├─java
    │  ├─auth
    │  ├─filter
    │  ├─jdbc
    │  │  └─connection
    │  ├─mvc
    │  │  ├─command
    │  │  └─controller
    │  └─servlets
    │      ├─cart
    │      │  ├─command
    │      │  ├─domain
    │      │  ├─persistence
    │      │  └─service
    │      ├─curation
    │      │  ├─command
    │      │  ├─controller
    │      │  ├─domain
    │      │  ├─persistence
    │      │  └─service
    │      ├─etc
    │      │  └─command
    │      ├─event
    │      │  ├─command
    │      │  ├─domain
    │      │  ├─persistence
    │      │  └─service
    │      ├─faq
    │      │  ├─command
    │      │  ├─dao
    │      │  ├─model
    │      │  └─service
    │      ├─franchiseSearch
    │      │  ├─command
    │      │  ├─dao
    │      │  ├─model
    │      │  └─service
    │      ├─info
    │      │  └─command
    │      ├─inquiry
    │      │  ├─command
    │      │  ├─dao
    │      │  ├─model
    │      │  └─service
    │      ├─member
    │      │  ├─command
    │      │  ├─dao
    │      │  ├─dto
    │      │  └─service
    │      ├─mypage
    │      │  ├─command
    │      │  ├─dao
    │      │  ├─dto
    │      │  └─service
    │      ├─notice
    │      │  ├─command
    │      │  ├─dao
    │      │  ├─model
    │      │  └─service
    │      ├─order
    │      │  ├─command
    │      │  ├─domain
    │      │  ├─persistence
    │      │  └─service
    │      ├─product
    │      │  ├─command
    │      │  ├─domain
    │      │  ├─persistence
    │      │  └─service
    │      ├─refund
    │      │  ├─command
    │      │  ├─dao
    │      │  ├─dto
    │      │  └─service
    │      ├─reivew
    │      │  └─command
    │      ├─search
    │      │  └─command
    │      ├─taste
    │      │  └─command
    │      └─utils
    └─webapp
        ├─file
        │  └─download
        │      ├─banner
        │      └─product
        ├─META-INF
        ├─resources
        │  └─assets
        │      ├─css
        │      ├─images
        │      │  ├─common
        │      │  ├─contents
        │      │  ├─event
        │      │  │  ├─thumbnail
        │      │  │  └─view
        │      │  └─ui
        │      └─js
        │          └─build
        └─WEB-INF
            ├─inc
            ├─lib
            ├─tags
            └─views
                ├─cart
                ├─curation
                │  └─result
                ├─etc
                ├─event
                │  └─end
                ├─faq
                ├─franchiseSearch
                ├─info
                ├─inquiry
                ├─layouts
                │  ├─event
                │  ├─forum
                │  └─mypage
                ├─member
                │  ├─find
                │  └─regist
                ├─mypage
                │  ├─order
                │  │  └─box
                │  └─personal
                │      ├─info
                │      └─refund
                ├─notice
                ├─order
                │  ├─box
                │  ├─daily
                │  ├─inicis
                │  └─taste
                ├─product
                ├─review
                ├─taste
                └─ui
```



## 팀원 담당 페이지 소개
<details open>
<summary>고경림</summary>
<div markdown="1">
<h4>🌴 맞춤큐레이션</h4>
🌟 큐레이션 진행 <br><br>
  
  - 결과 출력 <br>
  - 키즈 프로그램 조회<br>

🌟 장바구니 조회<br>

</div>
<hr>
</details>

<details open>
<summary>김정주</summary>
<div markdown="1">
<h4>🌴 이벤트</h4>
🌟 이벤트 페이지 <br><br>
  
  - 진행중인이벤트 <br>
  - 종료된이벤트<br>
  - 당첨자발표<br>
  - 친구초대<br>
  - 회원혜택<br>

</div>
<hr>
</details>

<details open>
<summary>박민석</summary>
<div markdown="1">
<h4>🌴 메인 페이지</h4>
  
<h4>🌴 택배배송/매일배송 페이지</h4>
🌟 상품<br><br>

  - 상품 조회
  - 상품 검색
  - 찜
  - 상품 상세보기

<h4>💻 MARKUP </h4>

  - Header 상품 검색(기능X)
  - 시음선물(주문X)
  - 창업안내(글작성X)
  - 리뷰페이지

</div>
<hr>
</details>

<details open>
<summary>신종혁</summary>
<div markdown="1"><br>
🌟 로그인/회원가입 <br><br>
  
  - 아이디 찾기<br>
  - 비밀번호 찾기<br>

🌟 환불계좌 관리 페이지<br>

  - 환불계좌 등록/변경 페이지<br>

🌟 개인정보 페이지<br>

  - 변경 시, 비밀번호 확인<br>

🌟 개인정보 변경 페이지<br><br>
</div>
<hr>
</details>

<details open>
<summary>이동현</summary>
<div markdown="1">
<h4>🌴 고객기쁨센터</h4>
🌟<strong>FAQ</strong> <br> <br>
  
  - FAQ 검색<br>
  - 카테고리별 목록 조회<br>
  - (관리자) FAQ 등록<br>
  - (관리자) FAQ 삭제<br><br>
  
🌟<strong>1:1문의</strong> <br>
  - 1:1 문의등록<br>
  - 1:1 문의내역<br>
  - 1:1 문의 유형별 보기<br>
  - 1:1 문의 삭제<br><br>

🌟<strong>공지사항</strong> <br>
  - (관리자) 공지사항 등록<br>
  - (관리자) 수정하기 <br>
  - (관리자) 삭제하기 <br>
  - 공지사항 목록 조회<br><br>
  
🌟<strong>배송가능지역</strong> <br>
  - 배송가능 지역 검색하기 <br><br>

<h4>💻 MARKUP </h4>

- 제휴브랜드
</div>
<hr>
</details>

<details open>
<summary>이지현</summary>
<div markdown="1"><br>
🌟<strong>택배배송 주문</strong><br><br>
  
  - 주문서 작성<br>
  - 주문서 작성 완료 -> 확인

🌟<strong>마이페이지</strong><br>

  - My녹즙(택배 배송 관련 부분)<br>
  - 택배배송 주문내역<br>
  - 주문 취소<br>
  - 주문 내역 조회<br>
  - 배송 조회<br><br>
</div>
</details>

<hr>

<details open>
<summary>프로젝트 후기</summary>
<div markdown="1"><br>
신종혁<br>
처음으로 git을 사용해서 협업을 진행했는데, Merge 과정에서 발생하는 다양한 문제를 해결하면서 git에 좀 더 익숙해질 수 있었습니다.<br>
제가 부족했던 프로젝트 구성이나 JS 관련 영역을 다른 팀원 분들이 도와주셔서, 프로젝트가 잘 진행될 수 있었다고 생각합니다.<br><br>

이지현<br>
수업시간에 배웠던 기능을 활용해 볼 수 있는 좋은 기회였습니다. git을 사용하면서 어려운 부분이 많았지만,<br>
다행히 팀원분들의 도움으로 해결할 수 있었습니다. 모든 기능을 구현하지 못해서 아쉽지만 배운 점도 많아서 다음 프로젝트를 한다면 더 잘 할 수 있을 것 같습니다.<br><br>

이동현<br>
jsp&servlet 과 mvc 패턴으로 프로젝트를 진행하면서 수업시간에 배웠던 내용을 적용해 보는 시간이 되었고,<br>
이를 통해서 많은 것을 배운거 같습니다.<br><br>

박민석<br>
깃을 이용한 협업을 경험한 부분을 좋은 기회라 생각합니다.<br>
다들 열심히 했고 결과도 좋게 나왔지만 <br>
조금 더 잘할 수 있을거 같았는데 많이 아쉽습니다.<br>

고경림<br>
제가 만든 페이지가 구현되는 것에 있어서 뿌듯함을 느꼈지만 수업 시간에 했던 것들을 더 이해하고 진행했더라면<br>
더 좋은 결과가 나오지 않았을까 생각됩니다. 그래도 팀원들 덕분에 좋게 마무리한 것 같습니다.<br><br>

</div>
</details>

