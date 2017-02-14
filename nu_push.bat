set dist_folder=packages-dist
set nuget_source=https://www.nuget.org
set version=0.9.3
nuget push .\%dist_folder%\SlimMessageBus.%version%.*.nupkg -Source %nuget_source%
nuget push .\%dist_folder%\SlimMessageBus.Host.%version%.*.nupkg -Source %nuget_source%
nuget push .\%dist_folder%\SlimMessageBus.Host.ServiceLocator.%version%.*.nupkg -Source %nuget_source%
nuget push .\%dist_folder%\SlimMessageBus.Host.Serialization.Json.%version%.*.nupkg -Source %nuget_source%
nuget push .\%dist_folder%\SlimMessageBus.Host.Kafka.%version%.*.nupkg -Source %nuget_source%


