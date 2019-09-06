## New Feature 03

---

**이탈 / 잔존고객 의 플레이 패턴을 통해 학습된 이탈 예측모델** 

### plus feature

#### 결과값이 ( 0 or 1 )  로 튀어져 나오게끔 코딩 

---



- SUN_day ( = max(pledge_cnt) )

7일 기준 내 평균적으로 가장 pledge_cnt가 높은 day

```python
pledge_cnt
```



- level_high : 고레벨

```python
level_high = (level >= 13) (#65이상)
```



- id_boss_sum( = 아이디 당 몬스터 타격여부 1들의 합 )

```python
id_boss_sum = acc_id.sum(boss_monster)
```



- ratio_attacker : attacker비율

```python
ratio_attacker = random_attacker_cnt / (random_attacker_cnt + random_defender_cnt)
```



- time_counts

```python
 time_counts = value_count(time)
```



- server_high

```python
server_high = mean.server
```



- item_price_max

```python
item_price_max = groupby("acc_id")['item_price'].max()
```





---

---







