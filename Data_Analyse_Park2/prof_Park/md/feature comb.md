### Target Feature : 잔존기간, 결제액

------

## Plus Feature Factors

### * 잔존기간과 결제금액이 높을것으로 예상되는 [hard user] 특징

-  [combat]

**day** 일요일 pm8-9 혈맹 전투에 참여하는(전체 유저의 혈맹전 참여 수 가 가장높은 요일 도출해내야함)

**level** 13 (level 65 이상)

**pledge_cnt** 가 높고

**random_attacker_cnt** 본인이 막피공격을 행한횟수가 높은 

**num_opponent** 가 높을수록

- [pledge]

**play_char_cnt AND combat_char_cnt**가 높고 

**pledge_combat_cnt** 가 많고 

**random_attacter_cnt / ( random_attacter_cnt + random_defender_cnt )** 비율이  더 크고

**combat_play_time** 이 많고

- [trade]

**time_counts** 거래 발생시간 유무에 따라 count하여 빈도가 잦은 유저 찾아내

**server** 거래발생서버중 가장 거래가 자주되는 서버를 찾아내고 

**item_amount** 가 많고

**item_price_max**(판매하는 (sourece_acc_id),구매하는 (target_acc_id) 계정ekd item_price가 가장큰 거래) 가 클수록

- [activity]

**playtime** 이 많고

**npc_kill** 이 많고

**party_exp** 이 많고

**boss_monster_sum(몬스터 타격여부 1 들의합)** 이 많고

**fishing** 이 많고

**game_money_change** 가 많고

**enchant_count**가 많을수록



**===> 열거되어진 feature들의 multiple_random 조합을 통해**

**결제액 or 잔존기간 과 상관성이 높은 New_feature들을 생성할수 있을 것으로 생각됩니다..!**



### * 이탈률이 높을 것으로 예상되는 유저 [light user]

**same_pledge_cnt** 와 **random_defender_cnt**합이 높고 **level**이 60대 이전 저레벨구간 유저일수록 이탈률 이 높을것으로 예상됨 

평균 결제액이 낮고 , random_defender_cnt 가 높으며 level 이 저레벨구간이며, class 가 기사인 char_id 유저는 이탈률이 높을것 

---

---

## References 

### pvp [combat] 전투활동 일일집계 

- **pledge_cnt** 혈맹간 전투에 참여한 횟수 (공성전 횟수) 

  => 일주일에 20:00 - 21:00 사이에 펼쳐짐

- **temp_cnt** 단발성 전투 횟수 & level( 12 ~ ) 고레벨 => 공성전으로 이어질 확률 높아

- **same_pledge_cnt** 동일 혈맹원 간의 전투 횟수 => 카오틱 성향 hard user 가능성 높아, 

-  **num_opponent** 전투 상대 캐릭수 많을수록 hard user

- **level** 레벨 구간별 상관관계 조사후, 비슷한 구간은 군집화할 수 있을듯



### pledge 소속 혈맹 구성원 전투정보 일일집계 

- **play_char_cnt** 

  전투에 참여하지않더라도 active혈맹의 조직원이므로 

- **combat_char_cnt&acc_id** 

  전투에 참여한 혈맹원 수가 많을수록 active 혈맹일 가능성 높으므로 

  해당 혈맹 id를 지닌 acc_id 조사

- play_char_cnt & combat_char_cnt **joined** **acc_id** 도출 후 조사

- **combat_play_time** 이 영향력 높은지 / **non_combat_play_time**이 높은지 조사필요



### trade 캐릭터간 일별 거래 이력

- **item_price** 

  한건당 거래 가격이 높은 **source&target acc_id** => 상위 hard user 

### activity 일일 주요활동 집계

- 파티사냥 경험치가 높을수록 고렙 & 막피유저가 많은 서버 
- 솔로나 퀘스트 경험치 높을수록 저렙 & 오크서버 





