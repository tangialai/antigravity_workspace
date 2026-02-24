import os
import asyncio
from dotenv import load_dotenv
from graphiti_core import Graphiti
from graphiti_core.llm_client.gemini_client import GeminiClient, LLMConfig
from graphiti_core.embedder.gemini import GeminiEmbedder, GeminiEmbedderConfig

# Load environment variables
load_dotenv()


async def initialize_graphiti():
    api_key = os.getenv("GOOGLE_API_KEY")
    neo4j_uri = os.getenv("NEO4J_URI", "bolt://localhost:7687")
    neo4j_user = os.getenv("NEO4J_USER", "neo4j")
    neo4j_password = os.getenv("NEO4J_PASSWORD", "password")

    # Initialize Graphiti with Gemini
    graphiti = Graphiti(
        neo4j_uri,
        neo4j_user,
        neo4j_password,
        llm_client=GeminiClient(
            config=LLMConfig(api_key=api_key, model="gemini-2.0-flash")
        ),
        embedder=GeminiEmbedder(
            config=GeminiEmbedderConfig(api_key=api_key, embedding_model="embedding-001")
        )
    )
    return graphiti


async def ingest_sample_data(graphiti):
    # Example: Ingesting an Odoo-related event
    await graphiti.add_episode(
        "Người dùng Ryan Tan vừa cập nhật Odoo 19 Mastery Skill để tuân thủ tiêu chuẩn OCA."
    )
    print("✅ Đã nạp dữ liệu mẫu vào Graphiti.")

if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    # graphiti = loop.run_until_complete(initialize_graphiti())
    # loop.run_until_complete(ingest_sample_data(graphiti))
    print("🚀 Script đã sẵn sàng. Hãy cài đặt 'graphiti-core[google-genai]' và thiết lập .env để chạy.")
