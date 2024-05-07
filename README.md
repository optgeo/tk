# tk
都市計画決定GISデータ（国土交通省）

## Source Specifications
https://www.mlit.go.jp/toshi/tosiko/content/001609328.pdf

## basic schema
- code - YoutoID (youto), youtoID (tkbt), and kubunID unified.
- name - 名称 and tokeiname unified.
- date - 決定日
- status - 決定区分
- by - 決定者
- no - 告示番号
- city - citycode (5桁)

## layers
1. youto 用途地域
2. tokei 都市計画区域
3. senbiki 区域区分
4. ritteki 立地適正化計画
5. douro 都市計画道路
6. bouka 防火準防火
7. koudoti 高度地区
8. koudori 高度利用地区
9. tochiku 土地区画整理事業
10. chikukei 地区計画
11. tkbt 特別用途地区
12. kouen 公園
13. tokureiyouseki 特例容積率適用地区
14. kousoujyukyo 高層住居誘導地区
15. kyojyuchosei 居住調整地域
16. tokuteiyuudou 特定用途誘導地区
17. tokuteibouka 特定防火街区整備地区
18. rekifuu 歴史的風土保存地区、歴史的風土特別保存地区
19. ryokukachiiki 緑化地域
20. soubou 航空機騒音障害防止地区、航空機騒音障害防止特別地区
21. fukkousaiseikyoten 一団地の復興再生拠点市街地形成施設

## code list
### youto
- 1 第１種低層住居専用地域
- 2 第２種低層住居専用地域
- 3 第１種中高層住居専用地域
- 4 第２種中高層住居専用地域
- 5 第１種住居地域
- 6 第２種住居地域
- 7 準住居地域
- 8 田園住居地域
- 9 近隣商業地域
- 10 商業地域
- 11 準工業地域
- 12 工業地域
- 13 工業専用地域

### senbiki
- 22 市街化区域
- 23 市街化調整区域

### ritteki
- 31 居住誘導区域
- 32 都市機能誘導区域

### douro
- 3011 道路
- 3023 広場

### bouka
- 24 防火地域
- 25 準防火地域

### tkbt
- 1 特別工業地区
- 2 文教地区
- 3 小売店舗地区
- 4 事務所地区
- 5 厚生地区
- 6 娯楽レクリエーション地区
- 7 観光地区
- 8 特別業務地区
- 9 中高層階住居専用地区
- 10 商業専用地区
- 11 研究開発地区

### kouen
- 3021 公園
- 3022 緑地
- 3024 墓園

### soubou
- 40 航空機騒音障害防止地区
- 41 航空機騒音障害防止特別地区

## attribution
[都市計画決定GISデータ（国土交通省）](https://www.mlit.go.jp/toshi/tosiko/toshi_tosiko_tk_000087.html)を加工して使用

## 成果物の置き場所
Source Cooperative smartmaps/tk
Single PMTiles file
