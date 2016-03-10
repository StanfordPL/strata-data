  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label            
  vpbroadcastd %xmm10, %ymm0                      #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm   
  vmovq %xmm11, %xmm10                            #  4     0xf   5      OPC=vmovq_xmm_xmm          
  pmovsxdq %xmm6, %xmm8                           #  5     0x14  6      OPC=pmovsxdq_xmm_xmm       
  vunpckhps %xmm0, %xmm2, %xmm11                  #  6     0x1a  4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1e  5      OPC=callq_label            
  retq                                            #  8     0x23  1      OPC=retq                   
                                                                                                   
.size target, .-target
