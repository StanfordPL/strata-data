  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vmovss %xmm1, %xmm2, %xmm10          #  1     0     4      OPC=vmovss_xmm_xmm_xmm      
  vsqrtpd %xmm10, %xmm8                #  2     0x4   5      OPC=vsqrtpd_xmm_xmm         
  vpunpckhdq %xmm8, %xmm10, %xmm5      #  3     0x9   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhps %xmm5, %xmm1, %xmm11       #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm   
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label             
  retq                                 #  6     0x17  1      OPC=retq                    
                                                                                         
.size target, .-target
