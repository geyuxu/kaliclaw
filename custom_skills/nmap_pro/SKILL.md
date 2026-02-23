---
name: nmap_pro
description: "Professional Nmap scanning skill with structured output for AI parsing."
metadata:
  openclaw:
    requires:
      bins: ["nmap", "python3"]
---

# Nmap Pro Skill
Use this skill to perform port scanning. 
Protocol: Run nmap -oX /workspace/scan.xml <TARGET>, then run python3 /workspace/nmap_parser.py /workspace/scan.xml.
Return ONLY the JSON output. Any verbal summary is strictly forbidden.