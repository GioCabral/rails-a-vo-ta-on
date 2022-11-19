// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import ChatroomSubscriptionController from "./chatroom_subscription_controller"
application.register("chatroom-subscription", ChatroomSubscriptionController)

import CreateChatController from "./create_chat_controller"
application.register("create-chat", CreateChatController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import UserImageController from "./user_image_controller"
application.register("user-image", UserImageController)
