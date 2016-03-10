  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_byte_7_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label         
  vpandn %xmm1, %xmm1, %xmm0         #  2     0x5   4      OPC=vpandn_xmm_xmm_xmm  
  vcvtss2sil %xmm0, %ebx             #  3     0x9   4      OPC=vcvtss2sil_r32_xmm  
  xaddb %r9b, %bl                    #  4     0xd   4      OPC=xaddb_r8_r8         
  retq                               #  5     0x11  1      OPC=retq                
                                                                                   
.size target, .-target
