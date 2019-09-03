### Target Feature : 잔존기간, 결제액

------

### Feature Lists

- Server_activity => 잔존기간 or 결제액 높은 server 도출

  

- train_activity_total_sum

```python
train_activity_total_sum = sum(np.normalize(game_money_change & private shop & fishing & enchantcount & playtime))
```



- random_attacker_cnt & NPC kill( npc 죽인횟수 )

```python
attacker_npc = ("random_attacker_cnt" & "npc_kill")
```



- random_attacker_cnt & 특정 highest server 

```python
random_attacker_cnt & server(highest)
```



- Class & another Factors

  level 50 이전 기사 클래스 유저들의 접속률 & 거래금액 확인

  평균적인 기사/ 전사/ 요정/ 마법사 클래스의 평균금액이 전체적으로 높은지 확인

  ```python
  knight50 = (level < = 50) & (class = 1)
  np.mean(class = 1, class = 2, class = 3, class = 7) # 해당클래스들의 평균금액 높나?
  ```

  

- 캐릭터 사망 횟수 low / 플레이시간  (death / playtime)

```python
DeathPerTime = ("death" / "playtime") 
시간당 사망횟수가 적으면 strong user 확률 높아 
```



- boss_monster 보스 몬스터 타격 여부 (0=미타격 ,1= 타격) =>  총 타격 횟수 

```python
total_monter = value_count(boss_monster)
```



- game_money_change 일일 아데나 변동량 & enchant_count 7레벨 이상 아이템 인첸트 시도 횟수 high

```python
game_money_change 구간화,
enchant_count 구간화
=> 둘모두 높은 그룹의 결제액과 잔존일 예측
```

game_money_change 일일 아데나 변동량 AND enchant_count 7레벨 이상 아이템 인첸트 시도 횟수 high [구간화] (BY cut & bin) 상위 그룹에 대해 적용 진행 



- playtime 이 많은 user ID (activity) && (구매유저 / 판매) user id == > join ==>결제금액 예측

```python
playtime 구간화, 상위그룹에 해당 하는 userID 와
 join (target_acc_id OR source_acc_id)=> 예측
```



- pledge trade  time

  ```python
  group by 'pledge id', join.["tradetime"]
  ```

  거래발생시간이 비슷한 유저들 매칭(세분화).. 비슷한 시간대 존재하는지  ( 0 / 1 표현) => 1일시 그들의 잔존율, 결제액 확인 필요 

  tradetime 기존의 0,1,2,3 에서 더욱 세분화할 필요성...

  

- day_combat (전투날짜) && day_trade (거래 발생일) 

  전투를 하고 거래를 한날은 결제금액이 높은가 

  

- pledge_id 혈맹 아이디 && combat_char_cnt 

  전투 참여 혈맹 캐릭터 수 많으면 강직한 혈맹.

  ```python
  pledge_char_num = groupby["pledge_id"].combat_char_cnt
  ```

  

- same_char

평균 전투 참여 혈맹 캐릭터 수 많으면 강직한 혈맹....

=> 동일 혈맹, 평균 캐릭터당 혈맹 의 전투횟수 도출 

```python
groupby["same_pledge_cnt"].(combat_char_cnt / pledge_combat_cnt)
```

------



## Plus Feature 3

boss_monster 보스 몬스터 타격 여부

보스몬스터 만나려면 몇시간에서 며칠에 한번 등장하기에 만나기도 쉽지않음 => playtime



 일반파티 하셔서 파티보상 얻으시는것 추천합니다)