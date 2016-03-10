  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                          
.target:                              #        0    0      OPC=<label>                     
  vfmsubadd213pd %xmm1, %xmm2, %xmm3  #  1     0    5      OPC=vfmsubadd213pd_xmm_xmm_xmm  
  movapd %xmm3, %xmm9                 #  2     0x5  5      OPC=movapd_xmm_xmm              
  vmovapd %xmm9, %xmm1                #  3     0xa  5      OPC=vmovapd_xmm_xmm             
  retq                                #  4     0xf  1      OPC=retq                        
                                                                                           
.size target, .-target
