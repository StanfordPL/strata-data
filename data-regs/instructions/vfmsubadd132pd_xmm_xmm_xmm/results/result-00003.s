  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                          
.target:                              #        0    0      OPC=<label>                     
  movapd %xmm3, %xmm8                 #  1     0    5      OPC=movapd_xmm_xmm              
  vfmsubadd213pd %xmm2, %xmm1, %xmm8  #  2     0x5  5      OPC=vfmsubadd213pd_xmm_xmm_xmm  
  vminpd %xmm8, %xmm8, %xmm1          #  3     0xa  5      OPC=vminpd_xmm_xmm_xmm          
  retq                                #  4     0xf  1      OPC=retq                        
                                                                                           
.size target, .-target
