  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm9, %xmm2, %xmm7     #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm8, %xmm9, %xmm14    #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vcvtps2dq %xmm7, %xmm9             #  4     0xf   4      OPC=vcvtps2dq_xmm_xmm       
  pmovsxbd %xmm9, %xmm1              #  5     0x13  6      OPC=pmovsxbd_xmm_xmm        
  movhlps %xmm7, %xmm1               #  6     0x19  3      OPC=movhlps_xmm_xmm         
  movlhps %xmm14, %xmm1              #  7     0x1c  4      OPC=movlhps_xmm_xmm         
  retq                               #  8     0x20  1      OPC=retq                    
                                                                                       
.size target, .-target
