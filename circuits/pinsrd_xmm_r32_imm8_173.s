  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm0               #  1     0     4      OPC=vmovd_xmm_r32          
  vmovdqu %xmm1, %xmm11           #  2     0x4   4      OPC=vmovdqu_xmm_xmm        
  vminsd %xmm0, %xmm0, %xmm5      #  3     0x8   4      OPC=vminsd_xmm_xmm_xmm     
  vunpcklps %xmm5, %xmm11, %xmm3  #  4     0xc   4      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm3, %xmm1              #  5     0x10  4      OPC=movsd_xmm_xmm          
  retq                            #  6     0x14  1      OPC=retq                   
                                                                                   
.size target, .-target
