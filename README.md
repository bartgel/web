# web

## Vision

Demonstrate skills by creating a CI/CD pipeline that manages my resume so:

- A recruter should have a clear and strong idea about who I am and what I can offer to a company. 
- All information should be consistant over all media

The final result should be something you can demonstrate skills and knowledge


## Roadmap

Current Status: POC


All tasks are [documented here](https://github.com/bartgel/web/issues)

## Architecture

I had a legacy application that generates my CV based on an XML document. The original idea was having the same resume in Dutch and English. After a while I added French and Spanish.

The new idea is to manage all data in Obsidian. So I could use zettlecasten to explore and document new ideas.

A small nodejs application should migrate the Obsidian data in the format as needed in different projects (create pdf, post on linkedin, create website, ...)


# Remark

This repository is in a POC phase. There is still quite a lot of code-duplication and lack of tests. This will be fixed later on.

