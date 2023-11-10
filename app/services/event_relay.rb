require_relative '../../lib/ruby_protos/event_relay_services_pb'

class EventRelay
  def initialize
    @client = Eventrelay::Events::Stub.new('localhost:50051', :this_channel_is_insecure)
  end

  def log(name:, data:)
    event = Eventrelay::NewEvent.new(name: name, data: data.to_json, source: 'eventrelay_ruby_producer')

    @client.publish_events(Eventrelay::PublishEventsRequest.new(topic: 'posts',
                                                                durable: true,
                                                                events: [event]))
  end
end
