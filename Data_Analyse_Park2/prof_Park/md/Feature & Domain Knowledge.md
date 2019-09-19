# Feature & Domain Knowledge

## Feature Engineering

### NEW Feature ( 추가 생성 변수 )



#### combat 



combat_count 

전투 횟수 

리니지 게임 특성상, 전투 유형에 관계없이 전체 전투 횟수의 총합은 active하게 리니지 게임을 즐기는 user를 판단하는 척도로 작용가능 



isMajorClass

4가지 주류 클래스 해당 클래스 유무 

리니지 커뮤니티 분석시, 계정당 주류 클래스인 ( 기사, 요정, 마법사, 전사 ) 해당 유무는 클래스별로 상이하게 적용되는 능력치 배분 및 선호도의 차이가 상당하므로, 해당 유저의 잔존가치 산출에 영향을 줄것으로 판단됨



combat_logged_in



combat 활동 유무 1,0 으로 이진화하여 표현됨





tot_start_lv

1일 기준시 캐릭터 레벨 총합

tot_end_lv

28일 기준시 캐릭터레벨 총합

changed_lv 

28일 기준시 레벨 총합 - 1일기준시 레벨 총합

**시계열 데이터 특성상, 해당 value가 가변적이므로, 변수 다변화 진행시켜 독립적인 비교가 가능**

avg_start_lv

1일 기준 계정당 레벨 총합 / 계정당 캐릭터 수 

1일 기준 해당계정 유저의 평균적인 캐릭터 레벨을 산출하여 비교가능케함

avg_end_lv

28일 기준 계정당 레벨 총합 / 계정당 캐릭터 수 

28일 기준 해당계정 유저의 평균적인 캐릭터 레벨을 산출하여 비교가능케함

**여전히 다른 게임에 비해 레벨업이 어려운 리니지 게임 특성상, 레벨의 고 / 저 해당 유무와 레벨업 변동 속도와 같은 특성은 active user 및 잔존가치 판단의 중요 척도로 작용할 가능성이 높음**



#### pledge



avg_play_rate_per_pledge

혈맹당 평균 접속률 

total_combat_cnt_per_pledge

혈맹당 전체 전투횟수 

pledge_num_people

혈맹가입자수 ( 해당일 혈맹 관련 활동 자 수 )

pledge_logged_in

혈맹 관련활동 유무 1, 0 으로 이진화하여 표현

**리니지 게임 특성상, 혈맹은 가장 강력한 게임내 조직문화으로, 해당 혈맹의 active 정도를 파악하는 특성중 해당 혈맹 접속률, 전투횟수, 혈맹가입자수, 혈맹 관련활동 유무는 유저의 잔존가치를 판단하는데 있어 중요 feature가 될수 있음**



#### trade



sell_item_amount

해당일 해당 계정 유저의 총 판매아이템개수

get_item_amount

해당일 해당 계정 유저의 총 구매 아이템 개수 

**기존 데이터 column인 source_acc_id를 기준으로하여 정렬하여, 계정당 판매 / 구매 아이템 개수를 도출하여, trade 내 직접적인 유저 active 정도를 파악**



sell_item_price

해당일 해당계정 유저의 총 판매 아이템값 (아데나)

get_item_price

해당일 해당계정 유저의 총 구매 아이템 값 

**총 판매 / 구매 아이템값을 게임내 통화단위인 아데나 량으로 환산시켜 실질적인 판매활동에 대한 가치를  산출시킨 feature로 작용 예상**



trade_time_bin_0 

계정당 기준 0 - 6 시기에 거래 횟수

trade_time_bin_1 

계정당 기준 6 - 12 시기에 거래 횟수

trade_time_bin_2 

계정당 기준 12 - 18 시기에 거래 횟수

trade_time_bin_3 

계정당 기준 18 - 24 시기에 거래 횟수

**일반적인 게임유저들이 접속하기 힘든 늦은 시간에 접속하는 유저들은 hard user일 가능성이 농후함**



trade_type_0

자유시장 내에서 거래횟수 

trade_type_1

교환창 내에서 거래횟수

**기본 data column 인 trade_type을 세분화 하여 해당 거래 시스템 선호에 따른 user active 정도 확인 가능할것으로 보임** 



tot_trade_amount

사고 판 아이템 총 량 (아이템 총 물동량)

왕성한 거래 아이템량은 active user의 특성으로 판단될수 있음

tot_get_money

총 아데나 이익량

**아이템 거래가를 포함한 총 아데나 이익량을 산출하여, 해당 유저의 거래 이익정도를 파악하여, 이익률을 생각하는 user를 active 유저의 한 특성중 하나로 볼수 있음**



trade_logged_in

해당일 거래 유무

해당일 거래 유무는 active user 판단의 중요 척도로 작용,  이진화된 수치로 파악할수 있다



count_sell

해당일 해당계정 유저의 아이템 판매거래의  횟수 

count_get

해당일 해당계정 유저의 아이템 구매거래의 횟수

유저의 구매 / 판매 거래 자체의 횟수는 active user 의 특성이 될수 있다.



total_trade_count

사고 판 아이템 거래의 총 횟수 



#### activity



qexp_per_playtime

play 시간당  퀘스트 경험치 

sexp_per_playtime

play 시간당 solo 경험치

pexp_per_playtime

play 시간당 party 경험치 

**플레이시간당 밀도 높은 경험치 획득은 hard user의 역량 중 하나로 평가되어질수 있는 feature**



activity_logged_in

해당일 해당 계정당 활동유무 

해당 게정당 activity 활동이력 유무는 active user의 중요 척도로 작용, 이진화하여 파악할수 있다



max_spent

당일 혜당 계정 기준 제일 비싼 payment

가장 비싼 결제금액 량을 통해 hard user OR rich user 여부 판단이 가능할것으로 예상



min_spent

당일 혜당 계정 기준 제일 싼 payment

가장 싼 결제금액 량을 통해 최소 결제금액 정도를 파악해, small OR big customer 유저 판단 가능



mean_spent 평균 

당일 혜당 계정 기준 평균 payment

계정당 평균 결제 금액량을 도출시켜 해당 유저의 해당기간 평균 결제액 산출 가능 



tot_spent 

당일 혜당 계정 기준 총 payment

계정당 총 결제 금액을 도출시켜,  직관적인 비교가 가능



median_spent

당일 혜당 계정 기준 중간 payment 값

해당계정의 중간 결제금액을 통해 기본적인 과금 단위를 도출해낼 수 있다 



payment_logged_in

해당일 해당계정 결제 유무 

해당 계정의 결제 활동이력 유무를 이진화하여 파악함으로써 active user 특성 가늠 가능