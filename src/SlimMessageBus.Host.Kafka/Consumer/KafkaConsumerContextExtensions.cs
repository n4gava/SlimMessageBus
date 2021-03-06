﻿using Confluent.Kafka;
using System;

namespace SlimMessageBus.Host.Kafka
{
    public static class KafkaConsumerContextExtensions
    {
        private const string MessageKey = "Kafka_Message";

        public static Message GetTransportMessage(this ConsumerContext context)
        {
            if (context is null) throw new ArgumentNullException(nameof(context));

            return context.GetOrDefault<Message>(MessageKey, null);
        }

        public static void SetTransportMessage(this ConsumerContext context, Message message)
        {
            if (context is null) throw new ArgumentNullException(nameof(context));

            context.Properties[MessageKey] = message;
        }
    }
}
