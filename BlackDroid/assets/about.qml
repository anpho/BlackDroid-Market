import bb.cascades 1.4

Page {
    titleBar: TitleBar {
        title: "关于"
    }

    ScrollView {
        Container {
            topPadding: 20.0

            leftPadding: 20.0
            rightPadding: 20.0
            bottomPadding: 20.0
            Header {
                title: "缘起"
            }
            Label {
                multiline: true
                text: "　　黑莓上的android应用程序不少都有着卡顿 、费电、甚至安装以后不能用的问题，这个app收集了一些用起来还算流畅的android应用，方便大家下载使用。"

            }
            Label {
                multiline: true
                text: "　　目前大多数软件的服务器空间均由bbdev.cn提供，个别官网有永久下载链接的使用了官网的地址。"
            
            }
            Header {
                title: "参与"

            }
            Label {
                multiline: true
                text: "　　你可以通过填写问卷的方式提交你认为值得分享的应用程序，问卷地址："
            
            }
            Label {
                text: "<a href='https://wj.qq.com/s/1193994/ba19'>wj.qq.com/s/1193994/ba19</a>"
                textFormat: TextFormat.Html
                textStyle.textAlign: TextAlign.Center
                horizontalAlignment: HorizontalAlignment.Fill
            }
            Header {
                title: "应用信息"

            }
            Label {
                text: "开发：Merrick Zhang , Email:<a href='mailto:me@anpho.cn'>me@anpho.cn</a>"
                textFormat: TextFormat.Html
                textStyle.textAlign: TextAlign.Center
                textStyle.fontWeight: FontWeight.W100
                horizontalAlignment: HorizontalAlignment.Fill
            }
            Label {
                text: "Github: <a href='https://github.com/anpho/BlackDroid-Market'>BlackDroid-Market</a>"
                textFormat: TextFormat.Html
                textStyle.textAlign: TextAlign.Center
                textStyle.fontWeight: FontWeight.W100
                horizontalAlignment: HorizontalAlignment.Fill
            }
        }
    }
}
