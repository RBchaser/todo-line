class TasksController < ApplicationController
    def index
        @tasks=Task.all.order(id: "DESC")
        @characters=["https://i.pinimg.com/564x/25/c2/14/25c21462df100f85105f70c3c200ef53.jpg","https://i.pinimg.com/564x/5c/84/10/5c84105153b31c6e6b10ec4e0504a791.jpg","https://blog-imgs-113.fc2.com/2/c/h/2chrising/entry_img_4142.jpg","https://i.pinimg.com/564x/68/39/56/6839562f51747cc3243817b05f4a403a.jpg"]
    end
    
    def create
        Task.create(content:params["task"]["content"])
        redirect_to"/"
    end
    
    def destroy
        task=Task.find(params[:id])
        task.destroy
        redirect_to"/"
    end
    
    def edit
        @task=Task.find(params[:id])
    end
    
    def update
        task=Task.find(params[:id])
        task.content=params["task"]["content"]
        task.save
        redirect_to"/"
    end
end
