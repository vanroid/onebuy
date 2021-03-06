<@override name="header"/>
<@override name="content">
    <div class="m_myInfo">
        <dl>
            <dt class="gray6" data-url="profile/edit">
                <a href="#">
                    <img src="${wxAssets}/images/1.jpg"/>
                </a>
                <p>
                    ${user.username!}<em class="gray9">(id:${user.id!})</em>
                    <cite class="gray9">
                        <span>
                            <s class="am-icon-empire"></s>
                            云购小将
                        </span>
                        经验值:
                        <em>${user.exp!}</em>
                    </cite>
                </p>
                <i class="am-icon-angle-right"></i>
            </dt>
            <dd class="clearfix">
                <b>
                    <a href="#">
                        <em class="green">${user.luckPoint!}</em>
                        可用福分
                    </a>
                </b>
                <b>
                    <a href="#">
                        <em class="green">
                            <i>￥</i>
                            ${user.balance?string('0.00')!}
                        </em>
                        可用余额
                    </a>
                </b>
                <a href="#" class="redbtn">去充值</a>
            </dd>
        </dl>
    </div>
    <div class="sub_nav">
        <a href="#"><s class="am-icon-book"></s>我的云购记录<i class="am-icon-angle-right"></i></a>
        <a href="#"><s class="am-icon-gift"></s>获得的商品<i class="am-icon-angle-right"></i></a>
        <a href="#"><s class="am-icon-camera-retro "></s>我的晒单<i class="am-icon-angle-right"></i></a>
        <a href="#"><s class="am-icon-star-o"></s>我的关注<i class="am-icon-angle-right"></i></a>
        <a href="#"><s class="am-icon-money"></s>分享赚钱<i class="am-icon-angle-right"></i></a>
        <a href="#"><s class="am-icon-question-circle"></s>帮助与反馈<i class="am-icon-angle-right"></i></a>
        <a href="#"><s class="am-icon-expeditedssl"></s>安全设置<i class="am-icon-angle-right"></i></a>
        <a href="#"><s class="am-icon-gear"></s>账号设置<i class="am-icon-angle-right"></i></a>
        <p class="colorbb">客服热线：4001139887（工作时间：9:00 - 21:00）</p>
    </div>
    </@override>
   <@override name="nav_profile">active</@override>
<@extends name="../common/base.ftl"/>