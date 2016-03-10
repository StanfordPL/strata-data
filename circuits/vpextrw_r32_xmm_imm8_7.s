  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  movq $0xfffffffffffffffb, %rbx                  #  1     0     10     OPC=movq_r64_imm64     
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0xa   5      OPC=callq_label        
  shlb $0x1, %bl                                  #  3     0xf   2      OPC=shlb_r8_one        
  vpmovzxwq %xmm11, %xmm3                         #  4     0x11  5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9                  #  5     0x16  5      OPC=callq_label        
  xchgq %rbx, %r9                                 #  6     0x1b  3      OPC=xchgq_r64_r64      
  retq                                            #  7     0x1e  1      OPC=retq               
                                                                                               
.size target, .-target
