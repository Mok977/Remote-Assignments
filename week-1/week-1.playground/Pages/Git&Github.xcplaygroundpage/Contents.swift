// Remote Learning Assignment - Week 1
//: Part 1: Git & GitHub

/**
 Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.
 
 - git status
    顯示工作目錄和暫存區域的狀態，用來查看哪些更改已暫存，哪些尚未暫存，以及哪些檔未被 Git 追蹤， status 不會顯示有關已提交專案的任何歷史記錄資訊。
    ex: git add 後使用 git ststus 查看工作目錄和暫存的狀態
        git branch 後使用 git ststus 查看分支狀態
        git merge 後使用 git ststus 查看合併結果
    
 - git add
    添加新文件或更新 git 已編輯過的檔案加到 git 暫存區域
    ex: git add <file>
        git add . 將畫面裡所有的指令添加、刪除或更改的檔添加到 git 暫存區域中
        git add --all 所有未跟蹤檔和目錄都將移動到暫存區域
 
 - git reset
    檔案版本退回到前面的版本
    --soft (Repo) 已使用 git commit 提交到本地儲存庫
    ex:git reset --soft HEAD~1  # HEAD 表示當前版本數字表示移動到 HEAD 後面第幾個
    --mixed (Staging Index) 已使用 git add 提交到 git 暫存區域
    ex:git reset --mixed HEAD~2
    --hard (Working Directory) 還未使用 git add ，對文件和目錄中的內容所做的即時更改
    ex: git reset --hard HEAD~3
 
 - git commit
    git add 後使用 git commit 將 git 暫存區提交到本地儲存庫
    ex: git commit 輸入後會開啟一個文本編輯器，需提供提交消息，以及正在提交的內容清單
        git commit -m "commit message"  提交時設定摘要說明文字
 
 - git log
    檢視整個專案的 commit 紀錄 ，能看到的有 Commit hash, Author, Date, Commit message.
    ex: git log -n <limit>                  <limit>輸入只顯示多少筆的紀錄
        git log --oneline                   每個提交紀錄壓縮成一行顯示
        git log --stat                      包括哪些文件被更改以及從每個文件中添加或刪除的資訊
        git log -p                          提交每筆資料的完整差異性
        git log --author="<authorName>"     只顯示指定的作者
        git log <file>                      只顯示指定的文件
 
 - git branch
    獨立的開發路線，全新工作目錄、暫存區域和項目歷史記錄，可以確保開發人員在不同的分支上獨立工作的功能。
    ex: git branch <branch>    創建
        git branch --list.     列出
        git branch -m <branch> 重新命名
        git branch -d <branch> 刪除分支
        git branch -D <branch> 強制刪除分支
        git branch -a          列出所有遠端分支
 
 - git merge
    將 git branch 創建出來的目標分支 合併 到當前分支中，合併後，目標分支不會消失，需要透過 git branch -d 刪除。
    
 - git push [ repo_name ] [ branch_name ]
    將本地儲存庫 push 到 遠端儲存庫名稱 和 分支名稱 ，防止覆蓋提交其他人推送到相同的分支時，Git 將無法推送更改
 
 - git remote
    檢視已經設定好的遠端儲存庫，用來確認遠端儲存庫的設置是否正確，如果有使用 clone 會看到 origin
    ex: git remote add <name> <url>  添加一個遠端儲存庫
        git remote                   顯示遠端儲存庫清單
        git remote -v                顯示遠端數據庫的詳細情況包含 URL
 
 - fork
    複製其他人的 GitHub 專案到自己的遠端儲存庫，複製完後再對他進行 clone ，這樣可以不影響原生專案也可以保留原生專案的所有紀錄，之後開發到一定程度後可以再將 fork-branch 合併或是 pull request 到原生專案中
 
 - (Advanced) git rebase
    合併的另一種用法與merge不同的地方是： 重新修改特定分支的「基礎版本」，把另外一個分支的變更，當成我這個分支的基礎
    ex: Merge - M 將兩個分支綁定在一起的合併提交
             A---B---M  my-feature-branch
            /       /
        ...D---E---F---G    main
     
        rebase 會從原本：
                 E---F---G feature
                /
            A---B---C---D master
        rebase 合併後：
                         E'---F'---G' feature
                        /
            A---B---C---D master
        需要注意rebase會重寫你的提交歷史記錄
 
 - (Advanced) git cherry-pick
    從分支中挑選 commit 並將其應用於另一個分支的行為，缺點是會導致重複提交
     ex:
         A---B---C---D   Master
              \
                D---F---G Feature
         // 切换到 master 分支
        git checkout master
         // Cherry pick 操作
        git cherry-pick f 後 :
         A---B---C---D---F   Master
              \
                D---F---G Feature
 
 - (Advanced) git reflog
     git reflog 是比 git log 顯示版本紀錄更加完整的歷史紀錄，只要是透過指令修改了任何參照(ref)的內容，或是變更任何分支的 HEAD 參照內容，就會建立的歷史紀錄
     
 - (Advanced) git tag
    在 Git 中，標記標記 repo 歷史記錄中的重要點，Git 支援兩種類型的標籤
    - Lightweight tags 指向特定的 commit ，不包含其他資訊，也稱為軟標記，只要根據需要創建或刪除它們
    - Annotated tags 包含 metadata ，可以簽名以進行驗證，並且無法更改
 
 Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
 
 - 先到 GitHub 並按右側的 “+” 按鈕，然後選擇 “New repository”
 - 進入 Creat a new repository ，填寫專案名稱、選擇存取權限，點選 Add a ReadMe file 、點選 chooes a   license 選擇 MIT License 按下 Creat repository 完成新增專案
 - 複製儲存庫的 URL，然後打開終端並輸入 git clone <URL> 把專案clone到本機
 - 輸入 vim README.md 編輯自述檔 git add 新增剛剛的變更
 - 再來將本地文件上傳到遠程存儲庫，使用 git add <file_name> 和 git commit -m <message>
 - 然後輸入 git push <repo_name> <branch_name>
 
 */


  
  
  
