  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  cvttpd2dq %xmm2, %xmm5               #  1     0     4      OPC=cvttpd2dq_xmm_xmm       
  vpunpckhdq %xmm2, %xmm5, %xmm14      #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpbroadcastq %xmm14, %xmm12          #  3     0x8   5      OPC=vpbroadcastq_xmm_xmm    
  vunpckhps %xmm12, %xmm1, %xmm13      #  4     0xd   5      OPC=vunpckhps_xmm_xmm_xmm   
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label             
  retq                                 #  6     0x17  1      OPC=retq                    
                                                                                         
.size target, .-target
