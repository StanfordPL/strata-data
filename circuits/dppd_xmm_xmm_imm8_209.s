  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label                 
  vmulsd %xmm6, %xmm4, %xmm13                   #  2     0x5   4      OPC=vmulsd_xmm_xmm_xmm          
  vmulsd %xmm2, %xmm1, %xmm12                   #  3     0x9   4      OPC=vmulsd_xmm_xmm_xmm          
  vfmsubadd231pd %xmm13, %xmm6, %xmm12          #  4     0xd   5      OPC=vfmsubadd231pd_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1           #  5     0x12  5      OPC=callq_label                 
  retq                                          #  6     0x17  1      OPC=retq                        
                                                                                                      
.size target, .-target
