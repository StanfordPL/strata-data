  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vfmaddsub213pd %xmm2, %xmm2, %xmm2  #  1     0     5      OPC=vfmaddsub213pd_xmm_xmm_xmm  
  vminps %xmm1, %xmm2, %xmm14         #  2     0x5   4      OPC=vminps_xmm_xmm_xmm          
  vmovq %xmm14, %xmm6                 #  3     0x9   5      OPC=vmovq_xmm_xmm               
  vandnpd %xmm6, %xmm6, %xmm4         #  4     0xe   4      OPC=vandnpd_xmm_xmm_xmm         
  movq %xmm4, %xmm1                   #  5     0x12  4      OPC=movq_xmm_xmm                
  retq                                #  6     0x16  1      OPC=retq                        
                                                                                            
.size target, .-target
