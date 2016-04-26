//
//  ConversationViewController.swift
//  CloudIMTest
//
//  Created by 陈巳伟 on 16/4/26.
//  Copyright © 2016年 Chen-sw. All rights reserved.
//

import UIKit

class ConversationViewController: RCConversationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //新建一个聊天会话View Controller对象
        let chat = RCConversationViewController()
        
        //设置会话的类型，如单聊、讨论组、群聊、聊天室、客服、公众服务会话等
        chat.conversationType = RCConversationType.ConversationType_PRIVATE
        
        //设置会话的目标会话ID。（单聊、客服、公众服务会话为对方的ID，讨论组、群聊、聊天室为会话的ID）
        chat.targetId = "moonrobber"
        
        //设置聊天会话界面要显示的标题
        chat.title = "月亮"
        
        //设置头像的样式
        chat.setMessageAvatarStyle(RCUserAvatarStyle.USER_AVATAR_CYCLE)
        
        //显示聊天会话界面
        self.navigationController?.pushViewController(chat, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}






































