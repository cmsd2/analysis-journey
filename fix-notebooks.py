#!/usr/bin/env python3
"""Strip empty code cells missing 'outputs' (aximar-mcp artifact)."""
import json, sys, glob

paths = sys.argv[1:] or glob.glob("notebooks/*/*.macnb")
for path in paths:
    with open(path) as f:
        nb = json.load(f)
    original_count = len(nb["cells"])
    nb["cells"] = [
        c for c in nb["cells"]
        if not (c["cell_type"] == "code" and c.get("source", "").strip() == "" and "outputs" not in c)
    ]
    for c in nb["cells"]:
        if c["cell_type"] == "code" and "outputs" not in c:
            c["outputs"] = []
    if len(nb["cells"]) != original_count:
        with open(path, "w") as f:
            json.dump(nb, f, indent=1, ensure_ascii=False)
            f.write("\n")
        print(f"Fixed {path}: removed {original_count - len(nb['cells'])} empty cell(s)")
    else:
        print(f"OK {path}")
