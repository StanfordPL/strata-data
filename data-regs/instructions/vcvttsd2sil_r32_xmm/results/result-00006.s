  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vandps %xmm1, %xmm1, %xmm11  #  1     0     4      OPC=vandps_xmm_xmm_xmm  
  cvttsd2sil %xmm11, %r10d     #  2     0x4   5      OPC=cvttsd2sil_r32_xmm  
  cvttsd2sil %xmm1, %ebx       #  3     0x9   4      OPC=cvttsd2sil_r32_xmm  
  xaddw %bx, %r10w             #  4     0xd   5      OPC=xaddw_r16_r16       
  retq                         #  5     0x12  1      OPC=retq                
                                                                             
.size target, .-target
