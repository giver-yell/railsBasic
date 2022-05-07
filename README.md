# railsBasic
# railsBulletinBoard

## アプリケーションサーバ（Puma）起動
`username:~/environment/sample_app $ rails server`  
or  
`username:~/environment/sample_app $ rails s`

## migration実行
`username:~/environment/sample_app $ rails db:migrate`


## MySQL操作
-  MariaDBの起動  
`$ sudo service mariadb start`  
- MySQLのステータス確認  
`$ sudo service mariadb status`  
- MySQL(MariaDB)への接続  
`$ mysql -u root -p`  
- データベースの確認  
`$ MariaDB [(none)]>> SHOW DATABASES;`  
- データベースの選択  
`$ USE データベース名;`  
- テーブル一覧の確認  
`$ MariaDB [sample_app]>> SHOW TABLES;`  
- テーブルの詳細を確認
`$ MariaDB [sample_app]>> DESCRIBE lists;`  

## 環境構築
### Railsバージョンアップ
`$ gem install rails -v 5.2.5`  
### ImageMagickをインストール
```
username:~/environment $ sudo yum -y install libpng-devel libjpeg-devel libtiff-devel gcc
username:~/environment $ cd
username:~ $ git clone https://github.com/ImageMagick/ImageMagick.git ImageMagick-7.0.11
username:~ $ cd ImageMagick-7.0.11
username:~/ImageMagick-7.0.11 $ ./configure
username:~/ImageMagick-7.0.11 $ make
username:~/ImageMagick-7.0.11 $ sudo make install
```
#### 確認
`username:~/ImageMagick-7.0.10-24 $ convert -version`

### Railsアプリ作成
`username:~/environment $ rails new アプリケーション名`

### コントローラ作成
`$ rails g controller コントローラ名 アクション名`
`$ rails g controller コントローラ名`
### モデル作成
`$ rails g model モデル名`

### MySQL
- MySQL(MariaDB) が入ってるか確認  
`$ mysql --version`  
-  mariadb-serverをインストール  
`$ sudo yum install mariadb-server`  


### Route確認
`$ rails routes`  

## paging導入(kaminariを利用)
### kaminariをインストール
1.Gemfileにコマンド追加  
`gem 'kaminari','~> 1.2.1'`  
2.kaminariをインストール  
`$ bundle install`  
3.kaminariの設定ファイルを作成  
`$ rails g kaminari:config`  
4.kaminariがページャで利用するテンプレートを作成  
`$ rails g kaminari:views default`  


