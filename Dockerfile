FROM ubuntu
# RUN mkdir app
# #RUN apk add bash
# WORKDIR /app

RUN ./actions_repo/main/curl.sh


# RUN curl \
#        -X POST \
#         -H "Accept: application/vnd.github+json" \
#         -H "Authorization: token $GITHUB_TOKEN " \
#         https://api.github.com/repos/${{ inputs.Repo_owner }}/${{ inputs.Repo_name }}/issues/${{ inputs.PR_number}}/comments \
#         -d '{"body":"${{inputs.Message }}"}'

#COPY . /app

# RUN chmod +x /app/entrypoint.sh

# ENTRYPOINT [ "/app/entrypoint.sh" ]
