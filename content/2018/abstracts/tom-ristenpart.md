Encrypted messaging provides strong confidentiality guarantees for user
communications by ensuring that even service providers learn nothing about
message contents. This end-to-end guarantee is at odds with service providers'
goal of properly handling abuse, such as harassment of one user by another.
Towards resolving this tension, Facebook deployed a technique called message
franking, in which a sender must commit to message contents in a way that
allows receivers to verifiably reveal message contents to the service provider
in case of abuse. 

In this talk I will describe our work providing the first in-depth treatment
of message franking. We detail a new variant of symmetric encryption, called
compactly committing authenticated encryption (ccAE), that captures the
security and functionality previously implicit in message franking. We show
that Facebook's basic approach realizes a secure ccAE, but unfortunately it is
slow relative to standard encryption algorithms and, for larger messages such
as file attachments, Facebook used AES-GCM instead. We demonstrate how to
exploit this gap: a sender can transmit an abusive message that is not
reportable to Facebook by the receiver. We disclosed to Facebook, who patched
their systems and awarded us a bug bounty. 

We go on to propose the fastest ccAE scheme to date. It can encrypt and commit
to a message using a single pass of a suitable cryptographic hash function,
such as SHA-256. We also provide negative results ruling out faster approaches
based on block ciphers.

This talk will cover joint work with Yevgeniy Dodis, Paul Grubbs, Jiahui Lu,
and Joanne Woodage.
