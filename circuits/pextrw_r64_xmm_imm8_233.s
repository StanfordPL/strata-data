  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vpmovzxwq %xmm1, %ymm11         #  1     0     5      OPC=vpmovzxwq_ymm_xmm   
  pmovzxdq %xmm1, %xmm3           #  2     0x5   5      OPC=pmovzxdq_xmm_xmm    
  vminsd %xmm3, %xmm11, %xmm2     #  3     0xa   4      OPC=vminsd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  4     0xe   5      OPC=callq_label         
  movq $0xe9, %rbx                #  5     0x13  10     OPC=movq_r64_imm64      
  xchgw %bx, %r9w                 #  6     0x1d  4      OPC=xchgw_r16_r16       
  retq                            #  7     0x21  1      OPC=retq                
                                                                                
.size target, .-target
