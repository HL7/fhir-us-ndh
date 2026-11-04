"""FHIR R4 provenance and separate operational download summaries."""

import json
import sys
from pathlib import Path


TOOL_SYSTEM = "https://github.com/HL7/fhir-us-ndh"


def write_download_provenance(
    destination: Path, metadata: dict, targets: list[str], agent: str,
) -> None:
    (destination / "download-summary.json").write_text(
        json.dumps(metadata, indent=2) + "\n", encoding="utf-8",
    )
    if not targets:
        (destination / "source.json").unlink(missing_ok=True)
        print(f"No downloaded resources at {destination}; no Provenance targets to record.", file=sys.stderr)
        return
    provenance = {
        "resourceType": "Provenance",
        "id": "download",
        "target": [{"reference": target} for target in targets],
        "occurredPeriod": {
            "start": metadata["started_at"],
            "end": metadata["finished_at"],
        },
        "recorded": metadata["finished_at"],
        "activity": {"text": "Download Plan-Net examples"},
        "agent": [{
            "who": {
                "type": "Device",
                "identifier": {"system": TOOL_SYSTEM, "value": agent},
                "display": agent,
            },
        }],
        "entity": [{"role": "source", "what": {"reference": metadata["url"]}}],
    }
    (destination / "source.json").write_text(
        json.dumps(provenance, indent=2) + "\n", encoding="utf-8",
    )
