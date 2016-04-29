class HomeController < ApplicationController

  def index
    #일정 목록 뷰
    @every_schd = Scheduler.all.order("schd_st desc")
    
  end
  
  
  def write_schd_form
    #일정 작성 폼
  end
  
  def write_schd_new
    #일정생성 액션
    
    schd_new = Scheduler.new
    
    schd_new.user_key=params[:user_id]
    schd_new.schd_title=params[:title]
    schd_new.schd_cont=params[:cont]
    schd_new.schd_type=params[:type]
    schd_new.schd_st=params[:start_time]
    schd_new.schd_ft=params[:end_time]
    schd_new.schd_color=params[:schd_color]
    schd_new.schd_imp=params[:important_size]
    #schd_new.schd_icon=params[:img_url]
    schd_new.schd_state=params[:process_state]
    schd_new.save
    
    redirect_to "/"
  end
  
  
  def update_schd_form
    #일정 수정 폼
    @schd_one = Scheduler.find(params[:schd_id])
    
  end
  
  
  def update_schd_act
    #일정 수정 액션
    schd_up = Scheduler.find(params[:schd_id])
    
    schd_up.user_key=params[:user_id]
    schd_up.schd_title=params[:title]
    schd_up.schd_cont=params[:cont]
    schd_up.schd_type=params[:type]
    schd_up.schd_st=params[:start_time]
    schd_up.schd_ft=params[:end_time]
    schd_up.schd_color=params[:schd_color]
    schd_up.schd_imp=params[:important_size]
    #schd_up.schd_icon=params[:img_url]
    schd_up.schd_state=params[:process_state]
    schd_up.save
    
    redirect_to "/"
  end


  def destroy_schd
    #일정 삭제 액션
    @one_schd = Scheduler.find(params[:schd_id])
    @one_schd.destroy
    redirect_to "/"
  end
    
end
