# Git

> Git은 분산 버전 관리 시스템이다.(DVCS)

## 1. Git 설정

git 커밋을 하기 이전에 작성자(author) 설정을 하여야 한다.

```bash
$ git config --global --list
user.email=edutak.ssafy@gmail.com
user.name=edutak
```

```bash
$ git config --global user.name {사용자이름}
$ git config --global user.email {사용자이메일} 
```

* 사용자이메일은 github에 등록된 이메일로 설정하는 것을 추천한다.

## Git 활용 기초

> Working Directory(Tree) : 현재 작업하는 공간
>
> INDEX(staging area) : 커밋 할 대상
>
> Commit 이력

1. 로컬 저장소 설정

   ```bash
   $ git init
   Initialized empty Git repository in C:/Users/user/Desktop/test/.git/
   (master) $
   ```

   * 해당 디렉토리에 `.git/` 폴더가 생성된다. 해당 폴더에는 git과 관련된 정보들이 모두 담겨있다.
   * 커맨드라인에서 `(master)` 가 표기 된다. 
     * `git init` 명령어를 작성하기 전에 `(master)` 표기 여부를 확인(저장소 내에 또다른 저장소가 있게 되면 원하는 방식으로 동작하지 않음.) 

2. add

   ```bash
   $ git add .
   $ git add README.md a.py
   $ git add python/
   $ git status
   On branch master
   
   No commits yet
   
   Changes to be committed:
     (use "git rm --cached <file>..." to unstage)
   
           new file:   a.py
   ```

   * 커밋 할 목록에 추가하는 명령어
   * `add` 명령어를 통해서 `working directory` 에서 `INDEX(staging area)` 로 이동시킨다.

3. commit

   ```bash
   $ git commit
   ```

   * 기본적으로 git bash에서 vim 편집기가 열린다.
     * `i` : 편집 모드
     * `esc` + `:wq` 를 통해 저장한다.
       * write + quit
   * 커밋 메시지는 이력을 잘 확인할 수 있도록 작성되어야 한다.
     * [참고 블로그](https://blog.ull.im/engineering/2019/03/10/logs-on-git.html)

4. 커밋 히스토리 확인(log) 

   ```bash
   $ git log
   $ git log --oneline
   $ git log -2
   ```

   * 커밋 이력을 `log` 명령어를 통해 자주 확인하자.

5. git 상태 확인 **중요!**

   ```bash
   $ git status
   ```

## Git 기본 명령어 되돌리기

1. `Staging area` 에서 unstage

   ```bash
   $ git status
   On branch master
   Changes to be committed:
     (use "git reset HEAD <file>..." to unstage)
   
           modified:   a.py
   ```

   ```bash
   $ git reset HEAD {파일명}
   ```

2. commit 메시지 수정

   ```bash
   $ git commit --amend
   ```

   * 커밋 메시지를 수정하게 된다면, 커밋 이력(해시값)이 변경되므로 주의하자!

   * 원격 저장소에 push를 한 이력에 대하여는 절대 변경하면 안된다!

   * 이 명령어를 다음과 같이 활용할 수 있다.

     ```bash
     $ git add omit_file.txt
     $ git commit --amend
     ```

     * commit에 빠뜨린 파일이 있다면 추가한 이후에 메시지 수정을 하면 포함하여 이력이 확정된다.

3. `working directory` 변경사항 버리기

   ```bash
   $ git status
   Changes not staged for commit:
     (use "git add <file>..." to update what will be committed)
     (use "git checkout -- <file>..." to discard changes in working directory)
   
           modified:   README.md
   ```

   ```bash
   $ git checkout -- {파일명}
   ```

   * 지금까지의 변경사항이 모두 삭제되고, 이전 커밋 상태로 돌아간다.

```bash
git remote -v

remote 저장소들이 나온다
add 추가
rm 삭제
```

.gitignore 

secret.



참고 문서

- [Pro Git](https://git-scm.com/book/ko/v2)
- [Git 입문](https://backlog.com/git-tutorial/kr/)
- [가이드라인](https://github.com/JaeYeopHan/Interview_Question_for_Beginner)

- [git nonsan](https://github.com/krta2/awesome-nonsan)
- [git cheatsheet](http://ndpsoftware.com/git-cheatsheet.html#loc=remote_repo;)
- [edutak](https://github.com/edutak/algorithms/blob/master/git.md)
- [기술블로그]([https://medium.com/@Dongmin_Jang/%EC%97%85%EC%B2%B4%EB%B3%84-%EA%B8%B0%EC%88%A0-%EB%B8%94%EB%A1%9C%EA%B7%B8-%EB%A6%AC%EC%8A%A4%ED%8A%B8-e2d736d0e658](https://medium.com/@Dongmin_Jang/업체별-기술-블로그-리스트-e2d736d0e658))
- [프로그래머스]([https://programmers.co.kr](https://programmers.co.kr/))
- [조대협](https://bcho.tistory.com/)
- [gitignore](http://gitignore.io/)



[프로그래머스문제](./상대경로)



git init

git add 

git commit

git remote add origin