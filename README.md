# vimrc 
這個是我使用的.vimrc設定檔，
主要透過 https://github.com/junegunn/vim-plug
安裝及管理一些套件。
如果是Vim的初學者想快速安裝一些外掛，可以試試看。
![Screenshot](https://ccc.tc/vimrc.png)
####需先安裝軟體
#####Ctags for Mac OS
<pre><code>
<b>MacOs內建的ctags是不能用的，另外安裝。最簡易的方式，透過brew安裝ctags</b>
Homebrew官網
http://brew.sh/

終端機下透過brew進行安裝。
$brew install ctags
</code></pre>
#####Powerline字型
<pre><code>https://github.com/powerline/fonts</br>

Terminal應該要設定相關的字型。</code></pre>

####安裝(請參考Youtube)

<pre><code>https://youtu.be/FPYv4S5NH2o
簡單說就是將vim的設定檔拷貝到自己的家目錄下的.vimrc。
如果您自已經有設定檔可先備份起來。
這個設定檔內含vim-plug這個外掛，所以透過curl載入vim-plug先。
使用vim-plug您需要有git指令
進入Vim後，即可透過:PlugInstall 載入我的其他外掛。
載入其他定義在vimrc中的外掛。</code></pre>

#####Ubuntu
<pre><code><b>終端機下可透過apt-get進行安裝</b>
$sudo apt-get install exuberant-ctags</code></pre>

#####Fedora新版(如果舊版可把dnf改為yum進行安裝)
<pre><code>$sudo dnf install ctags.x86_64</code></pre>

#####我在Mac上使用MacVim的別名
<pre><code>alias vi='/Applications/MacVim.app/Contents/MacOS/Vim -gopN'</code></pre>



####熱鍵說明:

<pre><code><kbd>j</kbd><kbd>j</kbd> 可返回一般模式
<kbd>F2</kbd> 啟動或取消paste狀態
<kbd>F3</kbd> 重建tags到~/.vimr/tags
<kbd>F5</kbd> 重載.vimrc
<kbd>F9</kbd> 高亮最後搜尋結果
<kbd>F10</kbd> 高亮游標上的字</code></pre>

####不同視窗上下移動:

<pre><code><kbd>,</kbd><kbd>h</kbd>
<kbd>,</kbd><kbd>j</kbd>
<kbd>,</kbd><kbd>k</kbd>
<kbd>,</kbd><kbd>l</kbd>
</code></pre>

####調整分割視窗大小:

<pre><code><kbd>Ctrl</kbd>+<kbd>j</kbd> 垂直分割放大
<kbd>Ctrl</kbd>+<kbd>k</kbd> 垂直分割縮小
<kbd>Up</kbd> 水平分割放大
<kbd>Down</kbd> 水平分割縮小</code></pre>



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
<kbd>,</kbd>+<kbd>m</kbd> 清除所有mark標記
<kbd>,</kbd>+<kbd>b</kbd> Tagbar開關 </code></pre>

####CtrlP的熱鍵:
<pre><code><kbd>Ctrl</kbd>+<kbd>p</kbd> 搜尋檔案
<kbd>Ctrl</kbd>+<kbd>j</kbd> 選檔時往上移動
<kbd>Ctrl</kbd>+<kbd>k</kbd> 選檔時往下移動
<kbd>Ctrl</kbd>+<kbd>t</kbd> 使用tab開啟選取的檔案
<kbd>Ctrl</kbd>+<kbd>v</kbd> 垂直分割開啟選取的檔案
<kbd>Ctrl</kbd>+<kbd>s</kbd> 水平分割開啟選取的檔案</code></pre>

####emmet-vim熱鍵:
<pre><code> 輸入html:5，游標在5的後面，壓<kbd>ctrl</kbd>+<kbd>y</kbd>再壓<kbd>,</kbd></code></pre>


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
