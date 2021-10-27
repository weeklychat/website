# syntax=docker/dockerfile:1
FROM node:16.12.0-bullseye-slim

RUN mkdir /app
WORKDIR /app