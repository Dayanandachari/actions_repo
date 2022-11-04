FROM node:18.3.0-alpine

RUN apk add bash


RUN curl \
        -X POST \
        -H "Accept: application/vnd.github+json" \
        -H "Authorization: token $GITHUB_TOKEN " \
        https://api.github.com/repos/${{ inputs.Repo_owner }}/${{ inputs.Repo_name }}/issues/${{ inputs.PR_number}}/comments \
        -d '{"body":"${{inputs.Message }}"}'

WORKDIR /app
COPY . /app

# RUN chmod +x /app/entrypoint.sh

# ENTRYPOINT [ "/app/entrypoint.sh" ]