  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  movdqa %xmm2, %xmm1                             #  1     0     4      OPC=movdqa_xmm_xmm    
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label       
  vmovdqu %xmm9, %xmm10                           #  3     0x9   5      OPC=vmovdqu_xmm_xmm   
  callq .move_64_128_xmm10_xmm11_xmm2             #  4     0xe   5      OPC=callq_label       
  movsldup %xmm2, %xmm1                           #  5     0x13  4      OPC=movsldup_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq              
                                                                                              
.size target, .-target
