---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
<style>
    .wrapper {
        margin-left: 30px;
    }
    .home {
        width: 230%;
    }

    table th:first-of-type {
    width: 12%;
    }
    table th:nth-of-type(2) {
    width: 5%;
    }
    table th:nth-of-type(3) {
    width: 3%;
    }
    table th:nth-of-type(4) {
    width: 10%;
    }
    table th:nth-of-type(5) {
    width: 10%;
    }
    table th:nth-of-type(6) {
    width: 10%;
    }
    table th:nth-of-type(7) {
    width: 10%;
    }
    table th:nth-of-type(8) {
    width: 10%;
    }
    table th:nth-of-type(9) {
    width: 40%;
    }
</style>

# Small Large Language Models

This list curates small Large Language Models (LLMs) that could be deployed to edge devices. It investigates the model origin, including number of parameters and optimization techniques and checks the reproducability. 

<div class="table-wrapper" markdown="block">

| **Name** | **Cite** | **Release** | **Parent Model** | **Parameters** | **Optimization** |  **GPU req\*** | **Repr\*\*** | **Note** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [GPT-2](https://github.com/openai/gpt-2) | [^1^] | 2019 | GPT | 117-1542M | tbd | - | - | GPT2 release archived |
| [minGPT](https://github.com/karpathy/minGPT) | | 2022 | GPT2 | 117M-175B | tbd | tbd | tbd | Small reimplementation of GPT, semi-archived |
| [nanoGPT](https://github.com/karpathy/nanoGPT) | | 2023 | GPT2 | 124-1558M | tbd | 40GB | Available | XL OOM, large ~5GB CPU only works |
| [picoGPT](https://github.com/jaymody/picoGPT) | | 2023 | GPT2 | 124-1558M | tbd | None | Available | Unnecessarily small GPT |
| [DistilGPT](https://huggingface.co/distilgpt2?text=My+name+is+Thomas+and+my+main) | | - | GPT2 | 82M | tbd | tbd | tbd | Distilled |
| [GPT-Neo](https://github.com/EleutherAI/gpt-neo) | [^2^] | 2020 | GPT3 | 125M-2.7B | tbd | tbd | tbd | GPU optimized, archived |
| [GPT-NeoX](https://github.com/EleutherAI/gpt-neox/) | [^3^] | 2022 | GPT3 | 20B | tbd | 40-268GB | OOM | LLM training optimized |
| [OpenLLaMa](https://github.com/openlm-research/open_llama) | [^4^] | 2023 | LLaMa | 3-13B | tbd | 3GB-? | tbd | Reproduction of Meta's LLaMa |
| [ExLlama](https://github.com/turboderp/exllama) | | - | LLaMa | 7-33B | tbd | 3-21GB | tbd | LLaMa with 4-bit GPTQ weights |
| [MiniLLM](https://github.com/kuleshov/minillm) | | 2023 | LLaMa, BLOOM, OPT with GPTQ | 7B-65B | tbd | 6-40GB | Available | Meant to run on consumer-grade GPUs |
| [GPTQ](https://github.com/IST-DASLab/gptq) | [^5^] | 2022 | LLaMa, OPT, BLOOM | 7B-65B | tbd | tbd | tbd | Post-training quantization for pre-trained transformers |
| [AutoGPTQ](https://github.com/PanQiWei/AutoGPTQ) | | 2023 | LLaMa, Moss-Moon, GPT-j | rsp. 7B, 16B, 6B | tbd | tbd | tbd | Work towards v1 |
| [GPTQ4LLaMa](https://github.com/qwopqwop200/GPTQ-for-LLaMa) | | 2023 | LLaMa | 7B-33B | 4-bit q | tbd | tbd | 4-bit quantizations (followed by AutoGPTQ) |
| [MiniGPT-4](https://github.com/Vision-CAIR/MiniGPT-4) | [^6^] | 2023 | LLaMa 2, Vicuna V0 | 7B, 7-13B | tbd | 11.5-23GB | tbd | LLama-2 with GPT-4 combination, but requires GPU |
| [Mystral AI](https://mistral.ai/product/) | | - | - | 7B | tbd | - | - | Better than LLaMa 2 13B |
| [GGML LLaMa 2](https://huggingface.co/EDGE-AI/EDGE_0-7B_GGML) | | - | - | - | tbd | - | - | Meta's Llama 2 7B GGML |
| [EdgeLM](https://github.com/microsoft/unilm/tree/master/edgelm) | [^7^] | 2022 | tbd | 9.4M | tbd | Unknown | No | Pre-trained model is unavailable, issue pending |
| [MiniLM](https://github.com/microsoft/unilm/tree/master/minilm) | [^8^] | 2021 | XLMR, RoBERTa, BERT | 107-117M, 30-81M, 22-66M | tbd | tbd | tbd | Based on older transformers |
| [FastChat-T5](https://github.com/lm-sys/FastChat#FastChat-T5) | | 2023 | T5, LLaMa | 3B, 7B-33B | tbd | tbd | tbd | Allows CPU only, but min 30GB |
| Primer | [^9^] | 2021 | T-5 | 1.9B | tbd | tbd | tbd | Identification of efficient LM |
| [Combiner](https://github.com/google-research/google-research/tree/master/combiner) | [^10^] | 2021 | Transformer | - | tbd | tbd | tbd | Sparse attention matrices |
| [EasyLM](https://github.com/young-geng/EasyLM/blob/main/docs/llama.md) | | - | LLaMa | 7-65B | tbd | tbd | tbd | Jax implementation of LLaMa |
| **Other models** | - | - | - | - | - | - |
| [DallE Mini](https://github.com/borisdayma/dalle-mini) | | 2022 | - | - | - | - | - | - |
| **Other resources** | - | - | - | - | - | - |
| [Edge-MoE](https://github.com/sharc-lab/Edge-MoE) | [^11^] | 2023 | - | - | - | - | - | Mixture-of-Experts for general Transformers and video |
| [MLC LLM](https://github.com/mlc-ai/mlc-llm) | [^12^] | 2023 | - | - | - | - | - | Machine Learning Compilation for LLMs |
| [LLaMa C++](https://github.com/ggerganov/llama.cpp/) | | - | - | - | - | - | - | Inference written in C++ |
| [MCUnet](https://github.com/mit-han-lab/mcunet) | [^13^] | 2020 | - | 0.75M-1.73M | - | - | - | |

</div>

- \* GPU Requirements, tested on VRAM and compatible types
- \*\* Reproducability, tested on a consumer grade GPU and edge 
