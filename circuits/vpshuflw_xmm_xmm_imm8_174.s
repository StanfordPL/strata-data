  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  movshdup %xmm2, %xmm14           #  1     0     5      OPC=movshdup_xmm_xmm       
  vpbroadcastw %xmm14, %xmm12      #  2     0x5   5      OPC=vpbroadcastw_xmm_xmm   
  vunpcklps %xmm12, %xmm14, %xmm8  #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovsd %xmm8, %xmm2, %xmm1       #  4     0xf   5      OPC=vmovsd_xmm_xmm_xmm     
  retq                             #  5     0x14  1      OPC=retq                   
                                                                                    
.size target, .-target
