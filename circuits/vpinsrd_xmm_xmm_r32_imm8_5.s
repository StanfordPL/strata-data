  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  movd %ebx, %xmm10                  #  1     0     5      OPC=movd_xmm_r32           
  vminps %xmm10, %xmm10, %xmm8       #  2     0x5   5      OPC=vminps_xmm_xmm_xmm     
  vorpd %xmm10, %xmm8, %xmm6         #  3     0xa   5      OPC=vorpd_xmm_xmm_xmm      
  callq .move_128_64_xmm2_xmm8_xmm9  #  4     0xf   5      OPC=callq_label            
  vunpcklps %xmm6, %xmm8, %xmm4      #  5     0x14  4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovsd %xmm4, %xmm2, %xmm1         #  6     0x18  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                               #  7     0x1c  1      OPC=retq                   
                                                                                      
.size target, .-target
