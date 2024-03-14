[Ollama][ollama] models of [NousResearch/Hermes-2-Pro-Mistral-7B-GGUF][hf-hermes2pro].

```console
$ ollama run adrienbrault/nous-hermes2pro:Q4_0 'Hey!'

Hello! How can I help you today? If you have any questions or need assistance, feel free to ask.
```

There are `-tools` and `-json` tags with the recommended system prompt for function calling and json mode.

You provide the tools with the user message:

```console
$ ollama run adrienbrault/nous-hermes2pro:Q4_0-tools "<tools>$(cat examples/tool-stock.json)</tools>

Fetch the stock fundamentals data for Tesla (TSLA)"

<tool_call>
{"arguments": {"symbol": "TSLA"}, "name": "get_stock_fundamentals"}
</tool_call>
```

Or a schema for the json mode:
```console
$ ollama run adrienbrault/nous-hermes2pro:Q4_0-json "<schema>$(cat examples/user-schema.json)<schema>

Adrien Brault was born in 1991"

{"firstName": "Adrien", "lastName": "Brault", "age": 30}
```

List of available tags:
- [adrienbrault/nous-hermes2pro:Q2_K](https://ollama.com/adrienbrault/nous-hermes2pro:Q2_K)
- [adrienbrault/nous-hermes2pro:Q2_K-tools](https://ollama.com/adrienbrault/nous-hermes2pro:Q2_K-tools)
- [adrienbrault/nous-hermes2pro:Q2_K-json](https://ollama.com/adrienbrault/nous-hermes2pro:Q2_K-json)
- [adrienbrault/nous-hermes2pro:Q3_K_M](https://ollama.com/adrienbrault/nous-hermes2pro:Q3_K_M)
- [adrienbrault/nous-hermes2pro:Q3_K_M-tools](https://ollama.com/adrienbrault/nous-hermes2pro:Q3_K_M-tools)
- [adrienbrault/nous-hermes2pro:Q3_K_M-json](https://ollama.com/adrienbrault/nous-hermes2pro:Q3_K_M-json)
- [adrienbrault/nous-hermes2pro:Q4_0](https://ollama.com/adrienbrault/nous-hermes2pro:Q4_0)
- [adrienbrault/nous-hermes2pro:Q4_0-tools](https://ollama.com/adrienbrault/nous-hermes2pro:Q4_0-tools)
- [adrienbrault/nous-hermes2pro:Q4_0-json](https://ollama.com/adrienbrault/nous-hermes2pro:Q4_0-json)
- [adrienbrault/nous-hermes2pro:Q4_K_S](https://ollama.com/adrienbrault/nous-hermes2pro:Q4_K_S)
- [adrienbrault/nous-hermes2pro:Q4_K_S-tools](https://ollama.com/adrienbrault/nous-hermes2pro:Q4_K_S-tools)
- [adrienbrault/nous-hermes2pro:Q4_K_S-json](https://ollama.com/adrienbrault/nous-hermes2pro:Q4_K_S-json)
- [adrienbrault/nous-hermes2pro:Q5_K_M](https://ollama.com/adrienbrault/nous-hermes2pro:Q5_K_M)
- [adrienbrault/nous-hermes2pro:Q5_K_M-tools](https://ollama.com/adrienbrault/nous-hermes2pro:Q5_K_M-tools)
- [adrienbrault/nous-hermes2pro:Q5_K_M-json](https://ollama.com/adrienbrault/nous-hermes2pro:Q5_K_M-json)
- [adrienbrault/nous-hermes2pro:Q6_K](https://ollama.com/adrienbrault/nous-hermes2pro:Q6_K)
- [adrienbrault/nous-hermes2pro:Q6_K-tools](https://ollama.com/adrienbrault/nous-hermes2pro:Q6_K-tools)
- [adrienbrault/nous-hermes2pro:Q6_K-json](https://ollama.com/adrienbrault/nous-hermes2pro:Q6_K-json)
- [adrienbrault/nous-hermes2pro:Q8_0](https://ollama.com/adrienbrault/nous-hermes2pro:Q8_0)
- [adrienbrault/nous-hermes2pro:Q8_0-tools](https://ollama.com/adrienbrault/nous-hermes2pro:Q8_0-tools)
- [adrienbrault/nous-hermes2pro:Q8_0-json](https://ollama.com/adrienbrault/nous-hermes2pro:Q8_0-json)

[hf-hermes2pro]: https://huggingface.co/NousResearch/Hermes-2-Pro-Mistral-7B-GGUF
[ollama]: https://ollama.com
