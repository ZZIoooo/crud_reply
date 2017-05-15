class CommentController < ApplicationController
    def reply_create
        new_reply = Reply.new(post_id: params[:post_id], content: params[:content], editor: params[:editor])
        new_reply.save
        
        show_post_url = '/show/'+params[:post_id]
        
        redirect_to show_post_url 
    end
    
    def reply_delete
        del_reply = Reply.find(params[:reply_id])
        del_reply.destroy

        show_post_url='/show/'+del_reply.post_id.to_s
        
        redirect_to show_post_url 
    end
end
    