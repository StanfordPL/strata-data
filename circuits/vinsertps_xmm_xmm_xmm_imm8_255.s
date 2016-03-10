  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm1_xmm10_xmm11           #  2     0x5   5      OPC=callq_label            
  vunpckhps %xmm10, %xmm11, %xmm13              #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  andnps %xmm13, %xmm7                          #  4     0xf   4      OPC=andnps_xmm_xmm         
  vmovhlps %xmm6, %xmm7, %xmm1                  #  5     0x13  4      OPC=vmovhlps_xmm_xmm_xmm   
  retq                                          #  6     0x17  1      OPC=retq                   
                                                                                                 
.size target, .-target
