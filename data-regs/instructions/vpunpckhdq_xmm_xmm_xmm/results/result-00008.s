  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpxor %xmm10, %xmm3, %xmm5           #  2     0x5   5      OPC=vpxor_xmm_xmm_xmm      
  vpxor %xmm11, %xmm2, %xmm1           #  3     0xa   5      OPC=vpxor_xmm_xmm_xmm      
  vunpckhps %xmm5, %xmm1, %xmm1        #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
