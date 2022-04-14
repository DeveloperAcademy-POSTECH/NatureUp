# NatureUp
Apple Developer Academy @ POSTECH, Afternoon Session 17 team's Mini Challenge Project

![iOS](https://img.shields.io/badge/Swift-iOS-51a9e8?logo=Swift)
![Firebase](https://img.shields.io/badge/with-Firebase-FFCC00?logo=Firebase)

## 개요
사회가 발전하며 환경이 파괴되는 속도가 가속화되고 그 영향이 서서히 드러나며, 사람들의 환경에 대한 관심도는 점점 높아지고 있습니다. 이에 따라 정부/기업/개인에 관계없이 다양한 환경 켐페인, 법률 및 제도, 환경 관련 트렌드가 점점 많아지고 있습니다.<br>
우리는 환경 보전 활동도 쉽고 재미있게 즐길 수 있다는 것을 사람들에게 알려주고 싶었습니다. 환경 활동에 대한 부담감은 낮추고, 뿌듯함을 더해 더 많은 사람들이 환경 보호 활동에 참여할 수 있도록 유도하고 싶었습니다. 이를 생각하는 과정에서 떠오른 것이 게임의 ‘퀘스트’ 방식이였고, 게임에서 퀘스트를 클리어 하는 것 처럼 환경 보호 활동을 즐겁게 진행할 수 있도록 자신의 위치에 따라 적절한 활동이 나타나는 방식, 활동을 세분화하여 쉬운 단계부터 진행할 수 있는 방식을 떠올렸습니다.<br>
그 결과로 탄생한 것이 바로 “Nature Up” 앱입니다.

## 사용 기술
- XCode
- Swift
- MapKit
- Firebase Firestore

## 기능 소개
### NatureUp의 주요 기능은 다음과 같습니다.

1. 위치 기반 환경 보호 활동 추천

    사용자가 위치한 가장 가까운 위치의 특징을 파악하여 사용자가 실천할 수 있는 환경 보호 활동 목록을 표시해줍니다. (현재 포항공과대학교 캠퍼스와 인근 지역 지원) <br>
    [<이슈 #30>](https://github.com/DeveloperAcademy-POSTECH/NatureUp/issues/30)<br>
    [<가까운 위치 탐색 알고리즘 코드>](https://github.com/DeveloperAcademy-POSTECH/NatureUp/blob/main/NatureUp/Views/Home/HomeView.swift#L16-L42)

2. 환경 보호 활동을 진행한 모습을 촬영하여 인증

    사용자는 환경 보호 활동을 실천하는 모습을 촬영하여 서버에 업로드를 통해 인증할 수 있으며 추후 다른 유저의 평가를 통해 보상(경험치와 포인트)을 획득할 수 있습니다.<br>
    환경 보호 활동은 세가지 난이도(상/중/하)를 통해 경험치와 포인트가 차등 지급됩니다.  

3. 다른 유저가 진행한 활동 평가

    유저는 랜덤 평가 기능을 통해 다른 유저가 실천한 활동들을 확인하고 Good/Bad 로 평가하고 평가가 완료되면 소량의 경험치를 지급 받습니다. 이를 통해 유저는 환경 활동 보호의 직접적인 실천 뿐만 아니라 다른 유저들의 실천도 확인하고 평가하면서 환경 보호 교육도 이뤄질 수 있습니다.   

4. 여러 유저들과 경쟁 (리더보드)

    유저는 환경 보호 활동과 평가를 통해 획득한 경험치를 통해 다른 사람들과 경쟁할 수 있습니다. 순위는 유저들의 경험치 획득 순서로 표시됩니다.<br>
    [<유저 경험치 순위 정렬 알고리즘 코드>](https://github.com/DeveloperAcademy-POSTECH/NatureUp/blob/main/NatureUp/ViewModels/UserViewModel.swift#L39-L75) 

5. 명패 커스텀을 통한 보상

    유저는 환경 보호 활동과 평가를 통해 획득한 포인트를 통해 리더보드에 표시되는 자신의 명패를 꾸밀 수 있는 디자인 요소들을 구입할 수 있습니다. 이를 통해 유저의 보상 심리를 충족할 수 있게 합니다.

## 스크린샷

## Contributors
- [Everett](https://github.com/Shin-jun)
- [Hyukey](https://github.com/devluce)
- [Mize](https://github.com/DevMizeKR)
- [Neis](https://github.com/JungYunseong)
- [Nia](https://github.com/pig1606)

## License
[MIT](https://choosealicense.com/licenses/mit/)