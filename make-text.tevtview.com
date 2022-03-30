<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>吟诗作对</title>
    <meta name="keywords" content="人工智能 生成 对联 古诗 AI Machine Learning Couplet Poem">
    <meta name="description" content="给出上联自动对下联，给出关键字，生成古诗词文，或者自动生成一些诗词和对联">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="sogou_site_verification" content="zylIzBzhTH"/>
    <meta name="shenma-site-verification" content="56c3777561da0f648b02550f73e4d77b_1640286186"/>
    <link href="./static/shiciweb.css" rel="stylesheet" type="text/css">
    <script src="//unpkg.com/valine/dist/Valine.min.js"></script>
    <script type="text/javascript" src="/static/webfont.js"></script>
    <script type="text/javascript" src="/static/shiciweb.js"></script>
    <script
            type="text/javascript">WebFont.load({ google: { families: ["Liu Jian Mao Cao:regular:chinese-simplified,latin", "Zhi Mang Xing:regular:chinese-simplified,latin", "Long Cang:regular:chinese-simplified,latin"] } });

    </script>
</head>
<body class="body">
<div>
    <div>
        <h1 class="title">吟诗作对</h1>
    </div>
    <div>
        <div class="text-block">
            这个诗词生成模型使用古诗词训练而成。对于传统题材的生成效果相对更好；但对于新事物、政治事件等不适合诗词的题材效果较差。尽量以风花雪月为题，避免低俗词语和政治内容。模型会一次生成多个结果供挑选。
            <br />
            <br />
        </div>
    </div>

    <div>
        <form id="input_form" name="input_form" action="/" method="post">
            <span class="choice">请选择吟诗或作对：</span>
            <span class="choice">
                <input type="radio" id="poem" name="radio" value="poem" onclick="setInputBoxTip()" class="w-radio-input">
                <label for="poem">吟诗</label>
                <input type="radio" id="couplet" name="radio" value="couplet" onclick="setInputBoxTip()"
                       class="w-radio-input">
                <label for="couplet">作对</label>
            </span>
            <br> <br>
            <label id="tip" for="seed" class="text-block"></label> <br>
            <input type="text" class="w-input" maxlength="20" size=40 name="seed" placeholder="比如：春风吹落樱花雨" id="seed"
                   style="visibility: hidden">
            <input type="submit" value="开始创作" style="visibility: hidden" id="submit_button" onclick="setWaitingMessage()">
        </form>
        <br><br>
    </div>
    <div id="result_section">
        
        <p class="result"> </p>
        
    </div>

    <div>
        <br />
        <a href="https://tieba.baidu.com/p/7603337529" target="_blank" rel="noopener noreferrer">有问题可以在百度贴吧讨论</a><br />
    </div>
    <div class="text-block"><br /> 留言区: </div>
    <div id="vcomments"></div>
    <script>
        new Valine({
            el: '#vcomments',
            appId: '6kjcxrfdWw1mJ2P4nCMMhgG7-gzGzoHsz',
            appKey: 'qYPMPY2CyIUU0b3r4LA6Yjzp',
            placeholder: '请留言……',
            avatar: 'mp',
            recordIP: true,
            enableQQ: true,
            requiredFields: ['nick']
        });
    </script>

</div>
<div hidden>
    <script type="text/javascript" src="https://s4.cnzz.com/z_stat.php?id=1280609189&web_id=1280609189"></script>
</div>
</body>
</html>
