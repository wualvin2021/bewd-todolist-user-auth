module Api
  module V1
    class TasksController < ApplicationController
      def index
        @tasks = Task.all
        render :json => @tasks
      end

      def create
        @task = Task.new(task_params)
        if @task.save
          render :json => {
            success: true,
            task: @task
          }
        end
      end

      def update
        @task = Task.find_by_id(params[:id])

        if @task.nil?
          render :json => {
            success: false,
            message: "Cannot find task"
          }
        else
          @task.update(task_params)
          render :json => {
            success: true,
            task: @task
          }
        end
      end

      def mark_complete
        @task = Task.find_by_id(params[:id])

        if @task.nil?
          render :json => {
            success: false,
            message: "Cannot find task"
          }
        else
          @task.update({completed: true})
          render :json => {
            success: true,
            task: @task
          }
        end
      end

      def mark_active
        @task = Task.find_by_id(params[:id])

        if @task.nil?
          render :json => {
            success: false,
            message: "Cannot find task"
          }
        else
          @task.update({completed: false})
          render :json => {
            success: true,
            task: @task
          }
        end
      end

      def destroy
        @task = Task.find_by_id(params[:id])

        if @task.nil?
          render :json => {
            success: false,
            message: "Cannot find task"
          }
        else
          if @task.destroy
            render :json => {
              success: true
            }
          else
            render :json => {
              success: false
            }
          end
        end
      end

      private

      def task_params
        params.require(:task).permit(:content)
      end
    end
  end
end
