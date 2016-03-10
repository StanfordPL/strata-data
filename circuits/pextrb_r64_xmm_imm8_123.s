  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  pmovsxdq %xmm1, %xmm0               #  1     0     5      OPC=pmovsxdq_xmm_xmm    
  vxorps %xmm0, %xmm1, %xmm7          #  2     0x5   4      OPC=vxorps_xmm_xmm_xmm  
  cvtss2sil %xmm7, %ebx               #  3     0x9   4      OPC=cvtss2sil_r32_xmm   
  callq .move_byte_11_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label         
  xaddb %bl, %r8b                     #  5     0x12  4      OPC=xaddb_r8_r8         
  retq                                #  6     0x16  1      OPC=retq                
                                                                                    
.size target, .-target
