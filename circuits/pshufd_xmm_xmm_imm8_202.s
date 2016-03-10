  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm5       #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckhdq %xmm2, %xmm5, %xmm7  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsldup %xmm2, %xmm3           #  3     0x9   4      OPC=movsldup_xmm_xmm        
  vmovhlps %xmm3, %xmm7, %xmm10   #  4     0xd   4      OPC=vmovhlps_xmm_xmm_xmm    
  movapd %xmm10, %xmm1            #  5     0x11  5      OPC=movapd_xmm_xmm          
  retq                            #  6     0x16  1      OPC=retq                    
                                                                                    
.size target, .-target
