<h1 id="toc_0">iOS架构入门</h1>

<p>1.架构方式：MVC，MVP，MVVM，CDD等<br/>
2.分层架构</p>

<h3 id="toc_1">架构基础</h3>

<p><strong>1.解耦合</strong><br/>
 * 方法一:Delegate<br/>
 * 方法二:Notification</p>

<p><strong>2.架构方式</strong><br/>
 MVC<br/>
 <img src="https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1487435624522&amp;di=4c5bb339f7601e5d5d8a129bcdb64633&amp;imgtype=0&amp;src=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20131127%2F20131127165846-1341991627.jpg" alt="MVC"/></p>

<p>MVP<br/>
 <img src="https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1488030447&amp;di=186dfd5a6ef87a412252036ae6200fca&amp;imgtype=jpg&amp;er=1&amp;src=http%3A%2F%2Fwww.2cto.com%2Fuploadfile%2FCollfiles%2F20160912%2F201609120928401103.png" alt="MVP"/></p>

<p>MVVM<br/>
 <img src="https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1487435857122&amp;di=0c9263c766b00c872754344f103329f1&amp;imgtype=0&amp;src=http%3A%2F%2F7xinl9.com1.z0.glb.clouddn.com%2F20160425152216.png" alt="MVVM"/><br/>
 View和ViewModel形成双向绑定，可以用RAC,KVO实现。</p>

<p>CDD<br/>
 <img src="http://static.open-open.com/lib/uploadImg/20160219/20160219081850_713.png" alt="CDD"/><br/>
 <a href="http://www.open-open.com/lib/view/open1455841132230.html">关于CDD模式的网址</a><br/>
 CDD目的是不需要书写Delegate就能够完成一个事件的传递。<br/>
 多运用于有多个层级关系的界面</p>

<h3 id="toc_2">分层思想</h3>

<p><img src="https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1488031638&amp;di=e9fbb676d7fcc61758ce22ecdc22b4cb&amp;imgtype=jpg&amp;er=1&amp;src=http%3A%2F%2Fimage.lxway.com%2Fupload%2F4%2F11%2F411e99e4a9e204fa142df09b79331384.png" alt="分层思想"/></p>

<p>Presentation layer(表示层)<br/>
Business Layer(逻辑层)<br/>
两个层应成应用层，主要负责App的交互和逻辑处理</p>

<p>Persistence Layer(持久层)或Serrice Layer(服务层)<br/>
提供网络请求，查询数据库，查询资源..</p>

<p>Database Layer(数据层)<br/>
数据的生成方式和存储方式，管理数据。</p>
