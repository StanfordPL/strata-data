  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                          
.target:                               #        0     0      OPC=<label>                     
  vunpckhps %xmm1, %xmm1, %xmm13       #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm       
  vfmaddsub132pd %xmm13, %xmm1, %xmm1  #  2     0x4   5      OPC=vfmaddsub132pd_xmm_xmm_xmm  
  vpunpckhdq %xmm1, %xmm13, %xmm6      #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm      
  vmovd %xmm6, %ebx                    #  4     0xd   4      OPC=vmovd_r32_xmm               
  retq                                 #  5     0x11  1      OPC=retq                        
                                                                                             
.size target, .-target
