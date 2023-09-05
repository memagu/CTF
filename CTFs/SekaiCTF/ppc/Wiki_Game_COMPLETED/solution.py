from collections import defaultdict, deque

for _ in range(int(input())):
    graph = defaultdict(list)
    v, e = map(int, input().split())

    for _ in range(e):
        source, destination = input().split()
        graph[source].append(destination)

    source, destination = input().split()

    queue = deque((source,))
    visited = {source,}

    for i in range(6):
        for _ in range(len(queue)):
            if not queue:
                break

            vertex = queue.popleft()

            for child in graph[vertex]:
                if child in visited:
                    continue

                queue.append(child)
                visited.add(child)

    print("YES" if destination in visited else "NO")