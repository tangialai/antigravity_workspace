import os
import asyncio
from dotenv import load_dotenv
from graphiti_core import Graphiti
from graphiti_core.llm_client.gemini_client import GeminiClient, LLMConfig
from graphiti_core.embedder.gemini import GeminiEmbedder, GeminiEmbedderConfig

# Load environment variables
load_dotenv()

from graphiti_core.cross_encoder.client import CrossEncoderClient

class NoopReranker(CrossEncoderClient):
    async def rerank(self, query, documents, top_n=None):
        return documents[:top_n] if top_n else documents
    
    async def rank(self, query, documents, top_n=None):
        return documents[:top_n] if top_n else documents


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
        ),
        cross_encoder=NoopReranker()
    )
    return graphiti


async def ingest_sample_data(graphiti):
    from datetime import datetime
    # Example: Ingesting an Odoo-related event
    await graphiti.add_episode(
        name="Odoo 19 Mastery Update",
        episode_body="Người dùng Ryan Tan vừa cập nhật Odoo 19 Mastery Skill để tuân thủ tiêu chuẩn OCA.",
        source_description="Manual Input",
        reference_time=datetime.now()
    )
    print("✅ Đã nạp dữ liệu mẫu vào Graphiti.")


async def main():
    graphiti = await initialize_graphiti()
    await ingest_sample_data(graphiti)


if __name__ == "__main__":
if __name__ == "__main__":
    asyncio.run(main())
