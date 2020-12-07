def user_found(users)

    if users.to_a.length > 0
        users[0]
    else
        nil
    end
end

def logged_in?

!!session[:user_id]

end

def current_user
    if logged_in?
        user_id = session[:user_id]
        users = find_user(user_id)
        user = user_found(users)
    else        
        nil
    end

end