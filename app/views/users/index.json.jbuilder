json.users @users do |user|
    json.name user.name

    json.clients user.clients do |client|
        json.name client.name
        json.projects client.projects do |project|
            json.name project.name
            json.invoice project.invoice

            json.tasks project.tasks do |task|
                json.description task.description
            end
        end
    end
end