  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movdqa %xmm6, %xmm3                           #  2     0x5   4      OPC=movdqa_xmm_xmm    
  callq .move_128_64_xmm3_xmm10_xmm11           #  3     0x9   5      OPC=callq_label       
  pmovzxbd %xmm11, %xmm1                        #  4     0xe   6      OPC=pmovzxbd_xmm_xmm  
  retq                                          #  5     0x14  1      OPC=retq              
                                                                                            
.size target, .-target
