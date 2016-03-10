  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  movq $0x7, %rbx                           #  1     0     10     OPC=movq_r64_imm64     
  movb %bh, %bh                             #  2     0xa   2      OPC=movb_rh_rh         
  vpmovzxwq %xmm1, %xmm3                    #  3     0xc   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  4     0x11  5      OPC=callq_label        
  xchgb %bl, %r8b                           #  5     0x16  3      OPC=xchgb_r8_r8        
  retq                                      #  6     0x19  1      OPC=retq               
                                                                                         
.size target, .-target
