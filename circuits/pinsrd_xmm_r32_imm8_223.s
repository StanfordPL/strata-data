  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vcvtsi2sdl %ebx, %xmm1, %xmm2                 #  1     0     4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  vmovd %ebx, %xmm9                             #  2     0x4   4      OPC=vmovd_xmm_r32           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label             
  unpcklps %xmm9, %xmm6                         #  4     0xd   4      OPC=unpcklps_xmm_xmm        
  unpcklpd %xmm6, %xmm1                         #  5     0x11  4      OPC=unpcklpd_xmm_xmm        
  retq                                          #  6     0x15  1      OPC=retq                    
                                                                                                  
.size target, .-target
