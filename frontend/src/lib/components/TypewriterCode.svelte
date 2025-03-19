<script lang="ts">
	import { onMount } from 'svelte';

	// The lines of code to type out
	const codeLines = [
		'<span class="text-blue-400">const</span> <span class="text-yellow-400">learnToCode</span> = <span class="text-purple-400">async</span> () => {',
		'  <span class="text-blue-400">const</span> <span class="text-yellow-400">skills</span> = [<span class="text-green-400">\'HTML\'</span>, <span class="text-green-400">\'CSS\'</span>, <span class="text-green-400">\'JavaScript\'</span>, <span class="text-green-400">\'React\'</span>, <span class="text-green-400">\'Node.js\'</span>];',
		'  <span class="text-blue-400">const</span> <span class="text-yellow-400">projects</span> = [];',
		'  ',
		'  <span class="text-blue-400">for</span> (<span class="text-blue-400">const</span> <span class="text-yellow-400">skill</span> <span class="text-blue-400">of</span> <span class="text-yellow-400">skills</span>) {',
		'    <span class="text-blue-400">await</span> <span class="text-yellow-400">learn</span>(<span class="text-yellow-400">skill</span>);',
		'    <span class="text-blue-400">const</span> <span class="text-yellow-400">project</span> = <span class="text-blue-400">await</span> <span class="text-yellow-400">buildProject</span>(<span class="text-yellow-400">skill</span>);',
		'    <span class="text-yellow-400">projects</span>.push(<span class="text-yellow-400">project</span>);',
		'  }',
		'  ',
		'  <span class="text-blue-400">return</span> {',
		'    <span class="text-yellow-400">skills</span>,',
		'    <span class="text-yellow-400">projects</span>,',
		'    <span class="text-yellow-400">success</span>: <span class="text-blue-400">true</span>',
		'  };',
		'}',
		'',
		'<span class="text-yellow-400">learnToCode</span>().then(<span class="text-yellow-400">result</span> => console.log(<span class="text-green-400">\'Career ready!\'</span>, <span class="text-yellow-400">result</span>));'
	];

	let displayedLines: string[] = [];
	let currentLine = 0;
	let currentCharIndex = 0;
	let cursorVisible = true;

	// Control typing speed with some randomness
	const baseTypingSpeed = 30; // milliseconds

	function getRandomTypingDelay() {
		// Add some randomness to typing speed to make it look more natural
		return baseTypingSpeed + Math.random() * 50;
	}

	function getPauseDelay() {
		return Math.random() * 300 + 100; // Random pause between 100-400ms
	}

	onMount(() => {
		displayedLines = Array(codeLines.length).fill('');
		cursorBlink();
		startTyping();
	});

	function cursorBlink() {
		setInterval(() => {
			cursorVisible = !cursorVisible;
		}, 530);
	}

	function startTyping() {
		const htmlLine = codeLines[currentLine];

		// Create a temporary div to parse the HTML content
		const tempDiv = document.createElement('div');
		tempDiv.innerHTML = htmlLine;
		const textContent = tempDiv.textContent || '';

		if (currentCharIndex < textContent.length) {
			// Calculate how much of the HTML string to include to get the right number of visible characters
			const visibleChars = currentCharIndex + 1;
			let htmlCharCount = 0;
			let resultHtml = '';

			// This is a simplified approach that works for our specific HTML structure
			let inTag = false;
			for (let i = 0; i < htmlLine.length; i++) {
				const char = htmlLine[i];
				resultHtml += char;

				if (char === '<') {
					inTag = true;
				} else if (char === '>') {
					inTag = false;
				} else if (!inTag) {
					// Only count visible characters (not in tags)
					htmlCharCount++;
					if (htmlCharCount >= visibleChars) {
						break;
					}
				}
			}

			// Update the displayed line
			displayedLines[currentLine] = resultHtml;
			currentCharIndex++;

			// Type the next character after a delay
			setTimeout(startTyping, getRandomTypingDelay());
		} else {
			// Line completed
			displayedLines[currentLine] = htmlLine;
			currentLine++;
			currentCharIndex = 0;

			if (currentLine < codeLines.length) {
				// Move to next line after a pause
				setTimeout(startTyping, getPauseDelay());
			}
		}
	}
</script>

<div class="code-container font-mono">
	{#each displayedLines as line, i}
		<div class="line">
			{#if line}
				{@html line}
			{/if}
			{#if i === currentLine && cursorVisible}
				<span class="cursor">|</span>
			{/if}
		</div>
	{/each}
</div>

<style>
	.code-container {
		height: 100%;
		overflow: auto;
		line-height: 1.5;
	}

	.line {
		position: relative;
		min-height: 1.5em;
		white-space: pre-wrap;
	}

	.cursor {
		display: inline-block;
		color: #4ade80;
		font-weight: bold;
		animation: blink 0.75s step-end infinite;
	}

	@keyframes blink {
		from,
		to {
			opacity: 1;
		}
		50% {
			opacity: 0;
		}
	}
</style>
