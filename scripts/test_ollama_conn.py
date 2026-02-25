import ollama


def test_ollama():
    print("Testing connection to Local Ollama (llama3.1:8b)...")
    try:
        response = ollama.chat(model='llama3.1:8b', messages=[
            {
                'role': 'user',
                'content': 'Write a 1 sentence greeting in Vietnamese.'
            }
        ])
        print("✅ Connection Successful!")
        print(f"🤖 Antigravity received from Ollama: {response['message']['content']}")
    except Exception as e:
        print(f"❌ Connection Failed: {e}")


if __name__ == "__main__":
    test_ollama()
