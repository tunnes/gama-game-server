module GameService
  class Answer
    class << self
      def perform(options = {})
        @options = options
        subject.try(:assign_attributes, answer: @options[:answer])
        subject
      end

      private

      def subject
        @subject ||= GameQuestion.includes(:question).find_by(id: @options[:id])
      end
    end
  end
end
