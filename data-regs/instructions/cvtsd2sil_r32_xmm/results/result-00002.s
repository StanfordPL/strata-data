  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vminps %xmm1, %xmm1, %xmm15  #  1     0    4      OPC=vminps_xmm_xmm_xmm  
  vcvtsd2sil %xmm15, %ebx      #  2     0x4  5      OPC=vcvtsd2sil_r32_xmm  
  retq                         #  3     0x9  1      OPC=retq                
                                                                            
.size target, .-target
