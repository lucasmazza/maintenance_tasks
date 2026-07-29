# frozen_string_literal: true

module Maintenance
  class RunIdTask < MaintenanceTasks::Task
    class << self
      attr_accessor :observed_run_ids
    end

    def collection
      [1, 2]
    end

    def process(_number)
      self.class.observed_run_ids << run_id
    end
  end
end
