  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm6                    #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  xorq %rbx, %rbx                           #  2     0x5   3      OPC=xorq_r64_r64       
  rcll $0x1, %ebx                           #  3     0x8   2      OPC=rcll_r32_one       
  movupd %xmm6, %xmm3                       #  4     0xa   4      OPC=movupd_xmm_xmm     
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  5     0xe   5      OPC=callq_label        
  cmovnsw %r9w, %bx                         #  6     0x13  5      OPC=cmovnsw_r16_r16    
  retq                                      #  7     0x18  1      OPC=retq               
                                                                                         
.size target, .-target
