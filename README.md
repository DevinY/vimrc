# vimrc 
這個是我使用的.vimrc設定檔，
主要透過 https://github.com/junegunn/vim-plug
安裝及管理一些套件。

####安裝(請參考Youtube)

https://youtu.be/FPYv4S5NH2o

####需安裝ctags
MacOS 內建的ctags是不能用的，另外安裝。最簡易的方式，透過brew安裝ctags
Homebrew官網
http://brew.sh/

brew install ctags



####熱鍵說明:

<pre><code><kbd>j</kbd><kbd>j</kbd> 可返回一般模式
<kbd>F2</kbd> 啟動或取消paste狀態
<kbd>F3</kbd> 重建tags到~/.vimr/tags
<kbd>F5</kbd> 重載.vimrc
<kbd>F9</kbd> 高亮最後搜尋結果
<kbd>F10</kbd> 高亮游標上的字</code></pre>

####不同視窗上下移動:

<pre><code><kbd>Shift</kbd>+<kbd>h</kbd>
<kbd>Shift</kbd>+<kbd>j</kbd>
<kbd>Shift</kbd>+<kbd>k</kbd>
<kbd>Shfit</kbd>+<kbd>l</kbd>
</code></pre>

####調整分割視窗大小:

<kbd>Ctrl</kbd>+<kbd>j</kbd> 垂直分割放大
<kbd>Ctrl</kbd>+<kbd>k</kbd> 垂直分割縮小
<kbd>Up</kbd> 水平分割放大
<kbd>Down</kbd> 水平分割縮小



####不同的tab間移動:

<pre><code><kbd>Ctrl</kbd>+<kbd>l</kbd> 移到左邊的tab
<kbd>Ctrl</kbd>+<kbd>h</kbd> 移到右邊的tab</code></pre>

####我設定開啟NerdTree的熱鍵:
<pre><code><kbd>Ctrl</kbd>+<kbd>n</kbd> 開啟NerdTree</code></pre>

我設定的Leader kye是 <kbd>,</kbd>
<pre><code><kbd>,</kbd><kbd>c</kbd><kbd>d</kbd> 切換到目前的檔案的資料夾
所以透過<kbd>:e .</kbd>即可開啟這個資料夾的檔案</code></pre>

####Tagbar熱鍵(快速的押,再壓b)
<pre><code><kbd>,</kbd>+<kbd>c</kbd> 清除搜尋結果的高亮
<pre><code><kbd>,</kbd>+<kbd>m</kbd> 清除所有mark標記
<pre><code><kbd>,</kbd>+<kbd>b</kbd> Tagbar開關 </code></pre>

####CtrlP的熱鍵:
<pre><code><kbd>Ctrl</kbd>+<kbd>p</kbd> 搜尋檔案
<kbd>Ctrl</kbd>+<kbd>j</kbd> 選檔時往上移動
<kbd>Ctrl</kbd>+<kbd>k</kbd> 選檔時往下移動
<kbd>Ctrl</kbd>+<kbd>t</kbd> 使用tab開啟選取的檔案
<kbd>Ctrl</kbd>+<kbd>v</kbd> 垂直分割開啟選取的檔案
<kbd>Ctrl</kbd>+<kbd>s</kbd> 水平分割開啟選取的檔案</code></pre>


####Ctags的熱鍵:
<pre><code><kbd>Ctrl</kbd>+<kbd>]</kbd> 跳到tag定義的第方
<kbd>Ctrl</kbd>+<kbd>t</kbd> 返回
:ts <tag>  <RET>	Search for a particular tag
:tn	Go to the next definition for the last tag
:tp	Go to the previous definition for the last tag
:ts	List all of the definitions of the last tag
</code></pre>

####Vim熱鍵:
<pre><code><kbd>gf</kbd>  開檔
<kbd>gd</kbd>  查區域變數
<kbd>gD</kbd>  查全域變數</code></pre>
