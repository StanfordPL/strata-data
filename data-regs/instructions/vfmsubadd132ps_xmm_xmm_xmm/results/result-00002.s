  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vmovdqu %xmm3, %xmm4                #  1     0     4      OPC=vmovdqu_xmm_xmm             
  vfmsubadd231ps %xmm4, %xmm1, %xmm2  #  2     0x4   5      OPC=vfmsubadd231ps_xmm_xmm_xmm  
  vmovaps %ymm2, %ymm3                #  3     0x9   4      OPC=vmovaps_ymm_ymm             
  vandpd %xmm3, %xmm3, %xmm1          #  4     0xd   4      OPC=vandpd_xmm_xmm_xmm          
  retq                                #  5     0x11  1      OPC=retq                        
                                                                                            
.size target, .-target
