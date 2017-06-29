FROM wordpress:4.8.0-php7.1-apache
# FROM wordpress:latest # php5.6を使う場合は上をコメントアウト When you use php5.6, You should remove comment this line.

# 必要なツール郡をインストール
RUN apt-get update
RUN apt-get -y install wget unzip vim \
  && echo "syntax on " >> $HOME/.vimrc \
  && echo "set number " >> $HOME/.vimrc

# WP プラグイン (zip) ダウンロード
WORKDIR /tmp/wp-plugins
RUN wget https://downloads.wordpress.org/plugin/contact-form-7.4.6.zip
RUN wget https://downloads.wordpress.org/plugin/syntaxhighlighter.zip
RUN wget https://downloads.wordpress.org/plugin/wp-emmet.zip

# Zip ファイルを解凍してインストール
RUN unzip './*.zip' -d /usr/src/wordpress/wp-content/plugins

# 不要になった一時ファイルを削除
RUN apt-get clean
RUN rm -rf /tmp/*

# サーバが読めるように wp-content 以下の所有者を変更
RUN chown -R www-data:www-data /usr/src/wordpress/wp-content

WORKDIR /var/www/html
