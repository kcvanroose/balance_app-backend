json.name @user.name
json.username @user.username
json.business_name @user.business_name
json.id @user.id
json.clients @user.clients do |client|
    json.id client.id
    json.name client.name
    json.contact client.contact
    json.phone_number client.phone_number
    json.email_address client.email_address
    json.projects client.projects do |project|
        json.id project.id
        json.name project.name
        json.description project.description
        json.completed project.completed
        json.fee project.fee
        json.hourly_rate project.hourly_rate
        json.time_spent project.time_spent
        json.start_date project.start_date
        json.end_date project.end_date
        json.client project.client
        json.invoice project.invoice

        json.tasks project.tasks do |task|
            json.id task.id
            json.description task.description
            json.due_date task.due_date
            json.completed task.completed
            json.project task.project.id
        end
    end
end
