  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpunpckhdq %xmm3, %xmm3, %xmm6  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpbroadcastq %xmm6, %xmm7       #  2     0x4   5      OPC=vpbroadcastq_xmm_xmm    
  vunpckhps %xmm2, %xmm7, %xmm9   #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm   
  vmovsd %xmm2, %xmm9, %xmm1      #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target
