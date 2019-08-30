# bigcon_

**레이블 데이터 (train_label.csv)**
** 유저의 생존 기간과 일별 평균 결제 금액을 제공 변수 설명**
acc_id 유저 아이디
survival_time 생존 기간(일)
amount_spent 일별 평균 결제 금액

**활동 (train_activity.csv, test1_activity.csv, test2_activity.csv)**
** 캐릭터별 일일 주요 활동 집계 제공 변수 설명**
day 날짜
acc_id 유저 아이디
char_id 캐릭터 아이디
server 캐릭터 서버
**playtime 일일 플레이시간**
**npc_kill npc를 죽인 횟수**
solo_exp 솔로 사냥 획득 경험치
party_exp 파티 사냥 획득 경험치
**quest_exp 퀘스트 획득 경험치 ** 
boss_monster 보스 몬스터 타격 여부 (0=미타격 ,1= 타격) **총 타격 횟수** 
**death 캐릭터 사망 횟수**
revive 부활 횟수
exp_recovery 경험치 복구 횟수(성당)
**fishing 일일 낚시 시간**
private_shop 일일 개인상점 운영 시간
**game_money_change 일일 아데나 변동량**
**enchant_count 7레벨 이상 아이템 인첸트 시도 횟수**



**결제 (train_payment.csv, test1_payment.csv, test2_payment.csv)**
** 유저 결제 금액 일일 집계 제공 변수 설명**

day 날짜
acc_id 유저 아이디
amount_spent 결제 금액



**거래 (train_trade.csv, test1_trade.csv, test2_trade.csv)**
** 캐릭터 거래 이력(교환, 개인상점) 일일 집계 제공 변수 컬럼 설명** 

day 거래 발생 일 

time 거래 발생 시간 (00:00:00 ~ 23:59:59) 

type 거래 구분 (교환창 = 1, 개인상점 = 0) 

server 거래 발생 서버 

source_acc_id 주는/판매 유저 아이디 

source_char_id 주는/판매 캐릭터 아이디 

**target_acc_id 받는/구매 유저 아이디** 

target_char_id 받는/구매 캐릭터 아이디 

item_type 아이템 종류 

weapon (무기), armor (방어구), accessory(액세서리), adena (아데나), spell (스킬북), enchant_scroll (강화주문서), etc (기타)

item_amount 거래 아이템 수량

item_price 거래 가격 교환창 거래

 (Type=1)일 경우 NA



**혈맹 (train_pledge.csv, test1_pledge.csv, test2_pledge.csv)**
** 캐릭터 소속 혈맹 구성원들의 전투 정보 일일 집계 제공 변수 컬럼 설명**

day 날짜
acc_id 유저 아이디
char_id 캐릭터 아이디
server 캐릭터 서버
pledge_id 혈맹 아이디
play_char_cnt 접속 혈맹 캐릭터 수
combat_char_cnt 전투 참여 혈맹 캐릭터 수
pledge_combat_cnt 혈맹 전투 횟수의 합

**random_attacker_cnt 무작위공격(막피)을 행한 전투 횟수의 합**

**random_defender_cnt 무작위공격(막피)으로 피해받은 전투 횟수의 합**

same_pledge_cnt 동일 혈맹 전투 횟수의 합
temp_cnt 단발성 전투 횟수의 합
etc_cnt 기타 전투 횟수의 합
combat_play_time 전투 캐릭터 플레이 시간의 합
non_combat_play_time 非전투 캐릭터 플레이 시간의 합

**전투 (train_combat.csv, test1_combat.csv, test2_combat.csv)**
** 캐릭터 전투 활동 정보 일일 집계 제공 변수 설명**

day날짜
acc_id 유저 아이디
char_id 캐릭터 아이디
server 캐릭터 서버
class 직업 범주 직업
0군주
1기사
2요정
3마법사
4다크엘프
5용기사
6환술사
7전사

level 레벨

**pledge_cnt 혈맹 전투 횟수**
**random_attacker_cnt 무작위 공격을 행한 전투 횟수**
**random_defender_cnt 무작위 공격자로부터 공격을 받은 전투 횟수**
temp_cnt 단발성 전투 횟수
same_pledge_cnt 동일 혈맹 전투 횟수
etc_cnt 기타 전투 횟수
**num_opponent 전투 상대 캐릭터 수**



- bigCON ref quiz

**단발성 전투**는 전투한 캐릭터 수가 일정 기준 이하인 캐릭터 간의 전투를 의미합니다. 

**기타 전투**는 제공된 전투 유형에 해당하지 않는 전투를 의미합니다.

 같은 캐릭터이지만 (acc_id와 char_id가 같지만)다수의 서버에서 기록이 있는 경우가 존재합니다.

 여러 서버의 캐릭터들이 모여서 즐기는 통합 서버 컨텐츠(e.g.월드 공성)는 일반 서버(데포르쥬,켄라우헬 등)가 아닌 특수 서버에서 진행되며,일반 서버 컨텐츠 활동은 일반 서버에, 통합 서버 컨텐츠 활동은 특수 서버에 기록이 됩니다. 따라서 동일한 캐릭터의 활동이 일반 서버와 특수 서버 모두에 기록될 수 있습니다.





- 직업 클래스 col 특이사항

마법사

전투 - pvp 

장비 

사냥용, 전투용 아이템의 교환이 매우 중요

* 아이템 type 과 class의 상관관계는 높은 편으로 예상됨 
* 한계좌에 대한 보유 캐릭터의 다양성 정도를 파악하라 

아이템 획득경로 //

*Quest* 퀘스트 완료 시 보상 아이템으로 지급 (저급아이템)

*NPC Sell* 기사단의 장비 상인 NPC를 통해 구매 (저급아이템)

*Making* 아이템 재료를 모아 NPC를 통해 제작 (고급아이템)

*Drop* 몬스터 사냥 시, 완제 아이템으로 드롭 (고급아이템)



- 상관관계 분석 특이점

**pledge_cnt** <=> **num_opponent** : 0.85

**etc_cnt** <=> **num_opponent** : 0.45



class 1,2,3,4,5 각클래스별( 각account별 그날 전투 횟수 )

다합쳐서 전투 횟수 

서버명 상위

△데포로쥬 △켄라우헬 △판도라 △데스나이트 △듀크데필 △안타라스 △파푸리온 △발라카스 △린드비오르 △사이하 등이다. 곧 추가될 서버는 ‘질리언’과 ‘군터’로 이름 붙었다.

**PVP서버:** 말 그대로 PVP, 즉 대인전이 가능한 서버. 대부분의 서버가 PVP서버에 해당한다.

**Non-PVP:** 캐릭터 간의 PVP가 허용되지 않는 서버

**특화 서버:** 리니지 초기의 치열했던 전장을 재현하기 위해 레벨 제한 및 PvP, [카오틱 성향](https://lineage.plaync.com/powerbook/wiki/카오틱+성향)에 대한 페널티를 줄인 서버