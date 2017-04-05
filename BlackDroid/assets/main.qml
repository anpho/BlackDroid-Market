/*
 * Copyright (c) 2011-2015 BlackBerry Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.4

NavigationPane {
    id: nav
    Menu.definition: MenuDefinition {
        helpAction: HelpActionItem {
            title: "关于"
            onTriggered: {
                var ab = aboutpage.createObject();
                nav.push(ab);
            }
            attachedObjects: [
                ComponentDefinition {
                    source: "about.qml"
                    id: aboutpage
                }
            ]
        }
    }
    Page {
        titleBar: TitleBar {
            title: "BlackDroid Market"

        }
        ListView {

            dataModel: XmlDataModel {
                id: xdm
                source: "blackdroid.xml"
            }
            listItemComponents: [
                ListItemComponent {
                    type: "appCategory"
                    Header {
                        title: ListItemData.title
                        mode: HeaderMode.Plain
                    }
                },
                ListItemComponent {
                    type: "appItem"

                    Container {
                        background: ImagePaintDefinition {
                            imageSource: "asset:///bg.amd"
                            repeatPattern: RepeatPattern.Fill
                        }
                        preferredWidth: Infinity
                        horizontalAlignment: HorizontalAlignment.Fill
                        topMargin: 10.0
                        leftMargin: 10.0
                        rightMargin: 10.0
                        bottomMargin: 10.0
                        Divider {

                        }
                        Label {
                            text: ListItemData.title
                            textStyle.fontSize: FontSize.Large
                            horizontalAlignment: HorizontalAlignment.Fill
                        }
                        Label {
                            text: "由 <a href='" + ListItemData.reflink + "'>" + ListItemData.ref + "</a> 推荐"
                            textFormat: TextFormat.Html
                            visible: ! ! ListItemData.ref && ! ! ListItemData.reflink
                        }
                        Label {
                            text: "由 " + ListItemData.ref + " 推荐"
                            textFormat: TextFormat.Html
                            visible: ! ! ListItemData.ref && ! ListItemData.reflink
                        }
                        Label {
                            text: "荐辞：" + ListItemData.brief
                            multiline: true
                            horizontalAlignment: HorizontalAlignment.Fill
                        }
                        Button {
                            text: "下载"
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            appearance: ControlAppearance.Default
                            onClicked: {
                                Qt.openUrlExternally(ListItemData.url)
                            }
                        }
                        Divider {

                        }
                    }
                }
            ]
            onTriggered: {
                var currentitem = xdm.data(indexPath);
                console.log(currentitem.url);
                Qt.openUrlExternally(currentitem.url);
            }
            scrollIndicatorMode: ScrollIndicatorMode.ProportionalBar
            bufferedScrollingEnabled: true
            leftPadding: 10.0
            rightPadding: 10.0
            bottomPadding: 10.0
            topPadding: 10.0

        }
    }

}