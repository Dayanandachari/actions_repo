FROM ubuntu
RUN mkdir app
# #RUN apk add bash
WORKDIR /app
RUN pwd \ 
    ls
COPY  test.sh .
RUN pwd
RUN sh test.sh

# RUN  /Dayanandachari/actions_repo/main/test.sh



# RUN curl \
#        -X POST \
#         -H "Accept: application/vnd.github+json" \
#         -H "Authorization: token $GITHUB_TOKEN " \
#         https://api.github.com/repos/${{ inputs.Repo_owner }}/${{ inputs.Repo_name }}/issues/${{ inputs.PR_number}}/comments \
#         -d '{"body":"${{inputs.Message }}"}'

#COPY . /app

# RUN chmod +x /app/entrypoint.sh

# ENTRYPOINT [ "/app/entrypoint.sh" ]
