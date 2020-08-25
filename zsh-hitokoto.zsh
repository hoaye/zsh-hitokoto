if ! (( $+commands[curl] )); then
    echo "zsh-hitokoto require curl support" >&2
    return
fi

if ! (( $+commands[jq] )); then
    echo "zsh-hitokoto require jq support" >&2
    return
fi

curl -sL https://v1.hitokoto.cn/\?encode\=json | jq '.hitokoto'
