  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  movddup %xmm11, %xmm6                #  2     0x5   5      OPC=movddup_xmm_xmm  
  vmovapd %xmm6, %xmm9                 #  3     0xa   4      OPC=vmovapd_xmm_xmm  
  movq %xmm9, %rbx                     #  4     0xe   5      OPC=movq_r64_xmm     
  retq                                 #  5     0x13  1      OPC=retq             
                                                                                  
.size target, .-target
