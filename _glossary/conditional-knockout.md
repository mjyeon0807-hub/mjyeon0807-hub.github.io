---
title: "Conditional Knockout"
term_id: conditional-knockout
category: concepts
related: [cre-loxp, creert2, tet-on-tet-off]
sources: [kim-2018-cre-loxp]
---

A conditional knockout is a mouse in which a gene is inactivated only in chosen cells or at a chosen time, rather than throughout the animal from conception. It is the standard way to study a gene whose constitutive loss would be lethal, or whose function differs between tissues.

Producing one requires two strains: a Cre-driver line, in which Cre recombinase is expressed from a promoter or enhancer specific to the cell or tissue of interest, and a line carrying loxP-flanked (floxed) alleles of the target gene. Crossing them yields offspring in which the gene is excised wherever Cre is active, so the specificity and timing of the knockout follow entirely from the regulatory element chosen to drive Cre.

That dependence is also the main pitfall. Many widely used drivers are less restricted than their names suggest - GFAP marks astrocytes but also adult neural stem cells, Lyz2 covers monocytes, macrophages and granulocytes together, and Avil marks dorsal root ganglion and trigeminal neurons but not superior cervical ganglia - so a promoter's labeled population must be verified rather than assumed. Curated catalogs of tissue-specific Cre lines are maintained at public portals including IMPC, MGI, the Jackson Laboratory Cre Repository, GENSAT and the NIH Neuroscience Blueprint Cre Driver Network.
