  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vbroadcastsd %xmm1, %ymm2  #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  cvttsd2sil %xmm2, %ebx     #  2     0x5  4      OPC=cvttsd2sil_r32_xmm    
  retq                       #  3     0x9  1      OPC=retq                  
                                                                            
.size target, .-target
