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
    try:
        # 1. Khởi tạo Graphiti
        graphiti = loop.run_until_complete(initialize_graphiti())

        # 2. Nạp dữ liệu
        print("🚀 Bắt đầu nạp dữ liệu vào bộ não thứ hai...")

        # Ví dụ 1: Một sự kiện công việc
        loop.run_until_complete(graphiti.add_episode(
            "Ryan Tan vừa thiết lập thành công hệ thống Graphiti trên Mac M4 để hỗ trợ code Odoo 19."
        ))

        # Ví dụ 2: Một ghi chú về kỹ thuật
        loop.run_until_complete(graphiti.add_episode(
            "Odoo 19 yêu cầu Python 3.13 và đã thay thế hoàn toàn RPC service ở frontend bằng fetch API."
        ))

        # Ví dụ 3: Một sở thích hoặc thói quen
        loop.run_until_complete(graphiti.add_episode(
            "Ryan thường ưu tiên sử dụng OrbStack thay cho Docker Desktop để tối ưu hiệu năng trên Mac M2."
        ))

        print("✨ Hoàn tất nạp dữ liệu! Hãy mở Neo4j Browser để xem kết quả.")
    except Exception as e:
        print(f"❌ Lỗi: {e}")
        print("Gợi ý: Kiểm tra file .env đã có GOOGLE_API_KEY chưa và Docker Neo4j đã chạy chưa.")
