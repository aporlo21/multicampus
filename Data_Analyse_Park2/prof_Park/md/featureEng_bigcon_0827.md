# bigcon01 

**레이블 데이터 (train_label.csv)**
 유저의 생존 기간과 일별 평균 결제 금액을 제공 변수 설명
acc_id 유저 아이디
survival_time 생존 기간(일)
amount_spent 일별 평균 결제 금액

**활동 (train_activity.csv, test1_activity.csv, test2_activity.csv)**
 캐릭터별 일일 주요 활동 집계 제공 변수 설명
day 날짜
acc_id 유저 아이디
char_id 캐릭터 아이디
server 캐릭터 서버
playtime 일일 플레이시간
npc_kill npc를 죽인 횟수
solo_exp 솔로 사냥 획득 경험치
party_exp 파티 사냥 획득 경험치
quest_exp 퀘스트 획득 경험치
boss_monster 보스 몬스터 타격 여부 (0=미타격 ,1= 타격)
death 캐릭터 사망 횟수
revive 부활 횟수
exp_recovery 경험치 복구 횟수(성당)
fishing 일일 낚시 시간
private_shop 일일 개인상점 운영 시간
game_money_change 일일 아데나 변동량
enchant_count 7레벨 이상 아이템 인첸트 시도 횟수

**결제 (train_payment.csv, test1_payment.csv, test2_payment.csv)**
 유저 결제 금액 일일 집계 제공 변수 설명
day 날짜
acc_id 유저 아이디
amount_spent 결제 금액



**거래 (train_trade.csv, test1_trade.csv, test2_trade.csv)**
 캐릭터 거래 이력(교환, 개인상점) 일일 집계 제공 변수 컬럼 설명 

day 거래 발생 일 

time 거래 발생 시간 (00:00:00 ~ 23:59:59) 

type 거래 구분 (교환창 = 1, 개인상점 = 0) 

server 거래 발생 서버 

source_acc_id 주는/판매 유저 아이디 

source_char_id 주는/판매 캐릭터 아이디 

target_acc_id 받는/구매 유저 아이디 

target_char_id 받는/구매 캐릭터 아이디 

item_type 아이템 종류 

weapon (무기), armor (방어구), accessory(액세서리), adena (아데나), spell (스킬북), enchant_scroll (강화주문서), etc (기타)
item_amount 거래 아이템 수량
item_price 거래 가격 교환창 거래 (Type=1)일 경우 NA



**혈맹 (train_pledge.csv, test1_pledge.csv, test2_pledge.csv)**
 캐릭터 소속 혈맹 구성원들의 전투 정보 일일 집계 제공 변수 컬럼 설명
day 날짜
acc_id 유저 아이디
char_id 캐릭터 아이디
server 캐릭터 서버
pledge_id 혈맹 아이디
play_char_cnt 접속 혈맹 캐릭터 수
combat_char_cnt 전투 참여 혈맹 캐릭터 수
pledge_combat_cnt 혈맹 전투 횟수의 합
random_attacker_cnt 무작위공격(막피)을 행한 전투 횟수의 합
random_defender_cnt 무작위공격(막피)으로 피해받은 전투 횟수의 합
same_pledge_cnt 동일 혈맹 전투 횟수의 합
temp_cnt 단발성 전투 횟수의 합
etc_cnt 기타 전투 횟수의 합
combat_play_time 전투 캐릭터 플레이 시간의 합
non_combat_play_time 非전투 캐릭터 플레이 시간의 합

**전투 (train_combat.csv, test1_combat.csv, test2_combat.csv)**
 캐릭터 전투 활동 정보 일일 집계 제공 변수 설명
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
level레벨
pledge_cnt 혈맹 전투 횟수
random_attacker_cnt 무작위 공격을 행한 전투 횟수
random_defender_cnt 무작위 공격자로부터 공격을 받은 전투 횟수
temp_cnt 단발성 전투 횟수
same_pledge_cnt 동일 혈맹 전투 횟수
etc_cnt 기타 전투 횟수
num_opponent 전투 상대 캐릭터 수



- 직업 클래스 col 특이사항
- 

마법사

전투 - pvp 

장비 

사냥용, 전투용 아이템의 교환이 매우 중요

아이템 획득경로 //

*Quest* 퀘스트 완료 시 보상 아이템으로 지급 (저급아이템)

*NPC Sell* 기사단의 장비 상인 NPC를 통해 구매 (저급아이템)

*Making* 아이템 재료를 모아 NPC를 통해 제작 (고급아이템)

*Drop* 몬스터 사냥 시, 완제 아이템으로 드롭 (고급아이템)



- 상관관계 분석 특이점

pledge_cnt <=> num_opponent : 0.85

etc_cnt <=> num_opponet : 0.45