---
name: blog_reporter
description: "Convert scan JSON into a formatted Markdown report for blog sync."
metadata:
  openclaw:
    requires:
      bins: ["python3"]
---

# Blog Reporter Skill
Protocol:
1. Run `python3 /workspace/report_gen.py`.
2. Tell the user the report is ready in their workspace.