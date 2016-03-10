  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vandnpd %xmm1, %xmm1, %xmm6  #  1     0     4      OPC=vandnpd_xmm_xmm_xmm   
  vpbroadcastd %xmm6, %ymm8    #  2     0x4   5      OPC=vpbroadcastd_ymm_xmm  
  vcvttsd2sil %xmm8, %r8d      #  3     0x9   5      OPC=vcvttsd2sil_r32_xmm   
  movd %r8d, %xmm1             #  4     0xe   5      OPC=movd_xmm_r32          
  retq                         #  5     0x13  1      OPC=retq                  
                                                                               
.size target, .-target
