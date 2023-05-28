Hi guys, just wanted to share something very exciting I learned today. But let me know what your thoughts are ...

Someone pointed out there is a new rule in France that companies should reduce carbon ( https://www.eco-conception.fr/ ).

At first sight, this rule looks like it has been created by a non-IT'er but if you think about it, it is nearly genus. Keep in mind that for example a study by Ericsson that ICT equipment is responsible for 1.4% of total carbon emissions. If we could just bring this to 1%, we already would make a big difference ( https://www.ericsson.com/en/reports-and-papers/industrylab/reports/a-quick-guide-to-your-digital-carbon-footprint ).

So why do I think this is genius. 

It does not only improve the environment, but it also gives a legal base to developers, architects, ops and project managers to be able to push much-needed improvements. They will need to improve their systems, get rid of legacy, do performance upgrades and reduce the amount of servers that are basically gathering dust.

Let me explain, you will need improvements to do this and I see some big improvements and challenges for nowadays companies:

IMPROVEMENT 1: Go Agile

The idea is that you can implement this at a high speed because time is not standing still and we need to implement this as soon as possible.

So you will be forced to use Agile methodologies and really think about what is for your company the biggest gain in the shortest amount of time. Doing this as fast as possible will gain insights into what is working and where you need to improve even more.

IMPROVEMENT 2: Measure

Companies will need their grafana / PRTG / dynatrace dashboard not only to see what is happening on their system but also to add alerting and be creative in calculating ways to see what cpu-usage, memory usage, storage, etc have for impact on the environment.


Basically, you will need reports you can show to managers and the government to show you are improving and going in the right direction, but the main advantage is that you will have insight into your system at any given time

IMPROVEMENT 3: Storage

Companies will need to think about storage. What is the best way to store certain things:

- The 10 million log files on servers should be removed and placed in a centralized way (so it will be easier to debug issues)
- Thinking about if you want to save state on a database or you need a more event-driven approach
- Cleaning up data that is no longer needed

IMPROVEMENT 4: Non-prod

Non-prod environments are environments that are using a lot of resources but are not under constant load. Think about putting these down at night. This has huge advantages:

1. Lower electricity bill
2. You can daily test your disaster recovery procedures. Things will go wrong, but you will know how to handle it before it actually happens in production

You also need to reduce data on these systems, so you might consider filling them with small batches of anonymized production data, which also will improve GDPR guidelines

IMPROVEMENT 5: Code improvement

Developers will need to rethink certain concepts. 
- Try to delete code that is not been used - you might need to split up your application in smaller steps to create heat maps
- There is also the fact that devices that use a frontend will use more or less carbon depending on how this is designed. Finally, you will have a reason to remove those over extensive css (I could write a post on that).
- Measure slow performance on your applications and figure out ways to improve this
 

IMPROVEMENT 6: Infrastructure

You will need to step away from the classic VM way of thinking and finally start using k8s at bit scale. This will give you the opportunity to only use what you need when you need it.

The moment developers start packing smaller parts of the application, you can start to scale up when needed and scale down when there is not a lot of demand. This has the huge advantage that you can provide more power to an application when needed and have more applications running on the same server which will in the long run have a positive performance impact at a lower infrastructure cost. ( https://www.perfectscale.io/blog/what-is-the-carbon-impact-of-kubernetes )

And then I am not speaking of doing improvements like doing RUST on FireKube

So this is what I learned today. Let me know what you think in the comments below!
