  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vorpd %xmm2, %xmm1, %xmm6                       #  1     0     4      OPC=vorpd_xmm_xmm_xmm  
  movdqa %xmm6, %xmm2                             #  2     0x4   4      OPC=movdqa_xmm_xmm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label        
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xd   5      OPC=callq_label        
  retq                                            #  5     0x12  1      OPC=retq               
                                                                                               
.size target, .-target
