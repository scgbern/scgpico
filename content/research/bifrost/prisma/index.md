---
Title: Prisma
---
#Prisma
![/download/Bifrost/Prisma-LogoWithWhiteBackground.png](%assets_url%/download/Bifrost/Prisma-LogoWithWhiteBackground.png)

Software systems must typically be adapted to enable various kinds of software analyses, such as coverage analysis or feature analysis. It may not be possible to predict in advance which parts of the system need to be adapted, in which case either too much is adapted, or one risks to miss important parts of the system under analysis. Adaptation can therefore be both costly and awkward.
We propose to avoid these problems by adapting systems on the fly. Only the entry points of the application are initially adapted with the help of reflective meta-objects that intercede on behalf of the adapted object. Each adaptation triggers further adaptations of objects reached during a run. We support software analyses by reifying execution events of running applications. Multiple adaptations can be supported in a single running system, since the meta-objects keep track of the scope of each adaptation. As a consequence, only the code that needs to be adapted is touched, and adaptations can be combined.
We present Prisma, an implementation of on-the-fly software adaptation, we present examples of analyses supported by Prisma, and we demonstrate that Prisma is cost-effective from a performance perspective.

