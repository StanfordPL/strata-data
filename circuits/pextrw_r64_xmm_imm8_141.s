  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpbroadcastq %xmm1, %ymm9       #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhpd %xmm9, %xmm1, %xmm8   #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  pmovzxwq %xmm8, %xmm1           #  3     0xa   6      OPC=pmovzxwq_xmm_xmm       
  callq .move_128_064_xmm1_r8_r9  #  4     0x10  5      OPC=callq_label            
  movq $0x0, %rbx                 #  5     0x15  10     OPC=movq_r64_imm64         
  xchgw %r9w, %bx                 #  6     0x1f  4      OPC=xchgw_r16_r16          
  retq                            #  7     0x23  1      OPC=retq                   
                                                                                   
.size target, .-target
