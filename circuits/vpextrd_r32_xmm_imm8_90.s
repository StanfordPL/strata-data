  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movaps %xmm1, %xmm6             #  1     0     3      OPC=movaps_xmm_xmm         
  vpbroadcastd %xmm1, %xmm8       #  2     0x3   5      OPC=vpbroadcastd_xmm_xmm   
  vorpd %xmm8, %xmm6, %xmm11      #  3     0x8   5      OPC=vorpd_xmm_xmm_xmm      
  vunpckhps %xmm11, %xmm1, %xmm7  #  4     0xd   5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovd %xmm7, %ebx               #  5     0x12  4      OPC=vmovd_r32_xmm          
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
