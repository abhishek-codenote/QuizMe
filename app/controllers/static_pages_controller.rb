class StaticPagesController <ApplicationController
  def welcome
    features = [
    "Choose from premade quizzes on a variety of topics",
    "Make your own quizzes to customize your learning",
    "Compare your scores with other users"
    ]
    respond_to do |format|
      format.html{render :welcome, locals:{features: features}}  #here format is just a variable
    end
  end

  def about
    respond_to do |format|
      format.html{render :about}
    end
  end

  def leave_feedback
    required = [:name, :email, :reply,:feedback_type, :message]
    form_complete = true
    required.each do |f|
      if
        params.has_key? f and not params[f].blank? #thats good news. do nothing
      else
        form_complete = false
      end
    end
    if form_complete
      form_status_msg = "thank you for your feedback!"
    else
      form_status_msg = "please fill all the remaining fields"
    end
    respond_to do |format|
      format.html{render :contact, locals: {status_msg: form_status_msg}}
    end
  end
end
