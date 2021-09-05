#!/bin/sh

echo "..:: Starting gateway activation script ::.."

# Accessing RHF0M301 HAL
echo "..:: Starting RHF0M301 ::.."
cd /opt/lora_gateway
./reset_lgw.sh start

# Starting LoRa Pkt Forwarder in background
echo "..:: Starting LoRa Packet Forwarder ::.."
cd ../packet_forwarder/lora_pkt_fwd/
./lora_pkt_fwd &
