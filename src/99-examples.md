# Examples

## Table

--------------    -------------------------------
Key               Value

Key               Value

Multiline         Line 1 \
                  Line 2 \
                  Line 3
--------------    -------------------------------

## Reference Bibligraphy

Hey yo! This is Learn You a Haskell [@haskell], the funkiest way to learn Haskell, which
is the best functional programming language around. You may have heard of it.
This guide is meant for people who have programmed already, but have yet to try
functional programming.


## Code

```sh
echo "Test" > /tmp/banane.txt
```

## Figure

### Listing

\begin{figure}[H]
  \centering
  \begin{lstlisting}[frame=single]
  ---
  DKIM-Signature a=rsa-sha1; q=dns;d=short.cysl.gwerder.net;
  s=201811; c=relaxed/relaxed;t=1117574938; 
  x=1118006938;h=from:to:subject:date;
  b=dzdVyOfAKCdLXdJOc9G2q8LoXSlEniSbav+yuU4zGeeruD00lszZVoG4ZHRNiYzR
  ---
  \end{lstlisting}
  \caption{Example DKIM-Signatur}
  \label{fig:dkim}
\end{figure}


### Image


\begin{figure}
  \centering
  \includegraphics{attachments/image.png}
  \caption{Die SBB lässt ihre Mails von inxserver.com signieren}
  \label{fig:sbb-gmail}
\end{figure}
