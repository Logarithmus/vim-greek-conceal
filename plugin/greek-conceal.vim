" Vim global plugin for concealing greek letters

if !has('conceal') || exists("g:loaded_greek_conceal")
	finish
endif
let g:loaded_greek_conceal = 1

let s:save_cpo = &cpo
set cpo&vim

if !exists('g:greek_delta_alt')
	let g:greek_delta_alt = 1
endif

if !exists('g:greek_sigma_alt')
	let g:greek_sigma_alt = 0
endif

function! s:ConcealGreek()
	syn match GreekAlpha '\<alpha\>' conceal cchar=α
	syn match GreekBeta '\<beta\>' conceal cchar=β
	syn match GreekGamma '\<gamma\>' conceal cchar=γ
	if g:greek_delta_alt
		syn match GreekDelta '\<delta' conceal cchar=Δ
	else
		syn match GreekDelta '\<delta\>' conceal cchar=δ
	endif
	syn match GreekEps '\<eps\>' conceal cchar=ε
	syn match GreekEpsilon '\<epsilon\>' conceal cchar=ε
	syn match GreekDigamma '\<digamma\>' conceal cchar=ϝ
	syn match GreekZeta '\<zeta\>' conceal cchar=ζ
	syn match GreekEta '\<eta\>' conceal cchar=η
	syn match GreekTheta '\<theta\>' conceal cchar=θ
	syn match GreekIota '\<iota\>' conceal cchar=ι
	syn match GreekKappa '\<kappa\>' conceal cchar=κ
	syn match GreekLambda '\<lambda\>' conceal cchar=λ
	syn match GreekMu '\<mu\>' conceal cchar=μ
	syn match GreekNu '\<nu\>' conceal cchar=ν
	syn match GreekXi '\<xi\>' conceal cchar=ξ
	syn match GreekOmicron '\<omicron\>' conceal cchar=ο
	syn match GreekPi '\<pi\>' conceal cchar=π
	syn match GreekRho '\<rho\>' conceal cchar=ρ
	if g:greek_sigma_alt
		syn match GreekSigma '\<sigma\>' conceal cchar=ς
	else
		syn match GreekSigma '\<sigma\>' conceal cchar=σ
	endif
	syn match GreekTau '\<tau\>' conceal cchar=τ
	syn match GreekUpsilon '\<upsilon\>' conceal cchar=υ
	syn match GreekPhi '\<phi\>' conceal cchar=φ
	syn match GreekChi '\<chi\>' conceal cchar=χ
	syn match GreekPsi '\<psi\>' conceal cchar=ψ
	syn match GreekOmega '\<omega\>' conceal cchar=ω
endfunction

autocmd Syntax * silent! call <SID>ConcealGreek()

let &cpo = s:save_cpo
unlet s:save_cpo
