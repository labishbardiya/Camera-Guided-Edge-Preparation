# Camera Guided Photoresist Edge Removal for Small Chips

Design-stage material for Vishwakarma application **VK26-IITI-AHM-0196**. This repository contains an original parametric 10–20 mm chip fixture and labelled concept images. It is not a fabricated UV enclosure or verified process tool.

## Proposed first build

A camera locates a small chip in a tray. Software proposes a 0.5–1.0 mm perimeter and records the geometry; an operator approves it. Exposure requires a **qualified patterned 405 nm source**, opaque enclosure, independent fail-off lid interlock and shutter. Coating and development stay at a supervised wet bench. The `.scad` file is a mechanical tray draft only. Its dimensions are unverified.

The images in `visuals/` are AI-generated design concepts, not build photographs, microscopy, or metrology evidence.

## Budget and hard gates

The fixture, camera, safety-chain parts and approved lab consumables are budgeted at **₹28,000**, with **₹2,000 uncommitted** under the ₹30,000 ceiling. This assumes **shared access** to a qualified patterned exposure source and metrology. That access is unconfirmed. A consumer 405 nm resin printer is not a drop-in DLP exposure source. If source or supervised lab access fails, the project stops at dry camera registration.

## Verification targets

Dry placement: 95th-percentile border error ≤100 µm over ≥20 placements. Process comparison: untreated, manual and camera-guided conditions; initial six chips per condition, with centre thickness loss ≤5% and ≥30% hands-on time reduction as unverified targets. The lab must define acceptable limits and metrology before coated-chip work.

## Relevant references

- [EPFL introduction to photolithography](https://www.epfl.ch/research/facilities/cmi/process/photolithography/introductiontophotolithography/)
- [MicroChemicals lithography troubleshooting](https://www.microchemicals.com/dokumente/application_notes/lithography_trouble_shooting.pdf)
- [Texas Instruments UV DMD design considerations](https://www.ti.com/lit/an/dlpa060b/dlpa060b.pdf)
- [AZ 1500 resist datasheet](https://www.microchemicals.com/dokumente/datenblaetter/tds/merck/en/tds_az_1500_series.pdf)

No third-party CAD or code is copied into this repository.
