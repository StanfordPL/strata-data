  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  movshdup %xmm11, %xmm15              #  2     0x5   5      OPC=movshdup_xmm_xmm       
  vunpcklps %xmm2, %xmm15, %xmm4       #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  movups %xmm4, %xmm11                 #  4     0xe   4      OPC=movups_xmm_xmm         
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label            
  retq                                 #  6     0x17  1      OPC=retq                   
                                                                                        
.size target, .-target
