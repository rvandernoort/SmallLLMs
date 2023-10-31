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
    width: 3%;
    }
    table th:nth-of-type(3) {
    width: 3%;
    }
    table th:nth-of-type(4) {
    width: 15%;
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

This list curates small Large Language Models (LLMs) that could be deployed to edge devices. It investigates the model origin, including number of parameters and optimization techniques and checks the reproducability. Due to the new models coming out everyday with new variations, this list is incomplete, but feel free to add or update any entries on the [github](https://github.com/rvandernoort/SmallLLMs).

<div class="table-wrapper" markdown="block">

| **Name** | **Cite** | **Release** | **Parent Model** | **Parameters** | **Opt.\*** |  **GPU req\*\*** | **Repr\*\*\*** | **Note** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [GPT-2](https://github.com/openai/gpt-2) | [^1^] | 2019 | GPT | 117M-1.5B | None | - | - | GPT-2 sm-xl, archived |
| [minGPT](https://github.com/karpathy/minGPT) | | 2022 | GPT2 | 117M-1.5B | None |  None | tbd | Small reimplementation of GPT, semi-archived |
| [nanoGPT](https://github.com/karpathy/nanoGPT) | | 2023 | GPT2 | 117M-1.5B | None | None | Available | XL OOM, large ~5GB CPU only works |
| [picoGPT](https://github.com/jaymody/picoGPT) | | 2023 | GPT2 | 117M-1.5B | None | None | Available | Unnecessarily small implementation |
| [Lit-GPT](https://github.com/Lightning-AI/lit-gpt) | | 2023 | Various | 70M-180B | 4-8 bit quan. | tbd | tbd | Hackable implementation of OS LLMs |
| [DistilGPT](https://huggingface.co/distilgpt2?text=My+name+is+Thomas+and+my+main) | [^2^] | 2020 | GPT2 | 82M | KD | tbd | tbd | Distilled from 124M GPT2 |
| [GPT-Neo](https://github.com/EleutherAI/gpt-neo) | [^3^] | 2020 | GPT3 | 125M-2.7B | [TF Mesh](https://github.com/tensorflow/mesh) | Yes | tbd | TPU, GPU optimized, archived |
| [GPT-NeoX](https://github.com/EleutherAI/gpt-neox/) | [^4^] | 2022 | [Megatron-LM](https://github.com/NVIDIA/Megatron-LM) | 20B | [DeepSpeed](https://www.deepspeed.ai) | Yes | tbd | LLM training optimized |
| [OpenLLaMa](https://github.com/openlm-research/open_llama) | [^5^] | 2023 | LLaMa | 3-13B | [EasyLM](https://github.com/young-geng/EasyLM) | 3GB-? | tbd | Reproduction of Meta's LLaMa |
| [ExLlama](https://github.com/turboderp/exllama) | | 2023 | LLaMa | 7-33B | 4-bit GPTQ | 3-21GB | tbd | Fast and memory-efficient on modern GPUs |
| [ExLlamav2](https://github.com/turboderp/exllamav2) | | 2023 | LLaMa 2 |  1.1-34B | 2.5-5 bit quan. | tbd | tbd | Running local LLMs on modern consumer GPUs |
| [TinyLLaMa](https://github.com/jzhang38/TinyLlama) | [^6^] | 2023 | LLaMa 2 | 1.1B |  [2-8 bit quan.](https://huggingface.co/TheBloke/TinyLlama-1.1B-Chat-v0.3-GGUF) (AWQ, GPTQ, GGUF) | None - 30 | Available | use case on edge device |
| [MiniLLM](https://github.com/kuleshov/minillm) | | 2023 | LLaMa, BLOOM, OPT | 7B-65B | 4 bit quan. | 6-40GB | Available | Meant to run on consumer-grade GPUs |
| [GPTQ4LLaMa](https://github.com/qwopqwop200/GPTQ-for-LLaMa) | | 2023 | LLaMa | 7B-33B | 4-bit quan. | None | tbd | semi-archived, followed by AutoGPTQ |
| [MiniGPT-4](https://github.com/Vision-CAIR/MiniGPT-4) | [^7^8^] | 2023 | LLaMa 2, Vicuna V0 | 7B, 7-13B | 8-bit quan | 11.5-23GB | tbd | LLama-2 with GPT-4 combination, but requires GPU |
| [Mystral AI](https://github.com/mistralai/mistral-src) |[^9^] | 2023 | Mystral | 7B | SWA | tbd | tbd | Better than LLaMa 2 13B |
| [GGML LLaMa 2](https://huggingface.co/EDGE-AI/EDGE_0-7B_GGML) | | 2023 | LLaMa 2 | 7-70B | 2-8 bit quan. | 2-10GB RAM | - | Meta's Llama 2 7B GGML run with llama.cpp |
| [EdgeLM](https://github.com/microsoft/unilm/tree/master/edgelm) | [^9^] | 2022 | None | 9.4M | tbd | Unknown | No | Pre-trained model is unavailable, issue pending |
| [MiniLM](https://github.com/microsoft/unilm/tree/master/minilm) | [^10^] | 2021 | XLMR, RoBERTa, BERT | 107-117M, 30-81M, 22-66M | tbd | tbd | tbd | Based on older transformers |
| [FastChat-T5](https://github.com/lm-sys/FastChat#FastChat-T5) | | 2023 | T5, LLaMa | 3B, 7B-33B | tbd | tbd | tbd | Allows CPU only, but min 30GB |
| Primer | [^9^] | 2021 | T-5 | 1.9B | tbd | tbd | tbd | Identification of efficient LM |
| [Combiner](https://github.com/google-research/google-research/tree/master/combiner) | [^11^] | 2021 | Transformer | - | tbd | tbd | tbd | Sparse attention matrices |
| [EasyLM](https://github.com/young-geng/EasyLM/tree/main) | | - | LLaMa, GPT-J, RoBERTa | 7-65B | tbd | tbd | tbd | Jax/Flax implementation |
| **Other models** | - | - | - | - | - | - |
| [DallE Mini](https://github.com/borisdayma/dalle-mini) | | 2022 | - | - | - | - | - | - |
| **Other resources** | - | - | - | - | - | - |
| [Edge-MoE](https://github.com/sharc-lab/Edge-MoE) | [^12^] | 2023 | - | - | - | - | - | Mixture-of-Experts for general Transformers and video |
| [GPTQ](https://github.com/IST-DASLab/gptq) | [^13^] | 2022 | LLaMa, OPT, BLOOM | 7B-65B | tbd | tbd | tbd | Post-training quantization for pre-trained transformers |
| [AutoGPTQ](https://github.com/PanQiWei/AutoGPTQ) | | 2023 | LLaMa, Moss-Moon, GPT-j | rsp. 7B, 16B, 6B | tbd | tbd | tbd | Work towards v1 |
| [bitsandbytes](https://github.com/TimDettmers/bitsandbytes) | [^14^15^] | 2022 | - | - | 8 bit quan. | - | - | wrapper for CUDA quantization |
| [MLC LLM](https://github.com/mlc-ai/mlc-llm) | [^16^] | 2023 | - | - | - | - | - | Machine Learning Compilation for LLMs |
| [LLaMa C++](https://github.com/ggerganov/llama.cpp/) | | - | - | - | - | - | - | Inference written in C++ |
| [MCUnet](https://github.com/mit-han-lab/mcunet) | [^17^] | 2020 | - | 0.75M-1.73M | - | - | - | |

</div>

- \* Optimzation technique: Quantization (GPTQ) , Knowledge Distilation (KD), Sliding Window Attention (SWA)
- \*\* GPU Requirements for **inference**, tested on VRAM and compatible types
- \*\*\* Reproducability, tested on a consumer grade GPU and edge 

## References

todo
