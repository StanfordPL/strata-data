  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vcvtss2sil %xmm2, %r8d             #  1     0     4      OPC=vcvtss2sil_r32_xmm  
  incb %r8b                          #  2     0x4   3      OPC=incb_r8             
  vmovdqu %xmm2, %xmm1               #  3     0x7   4      OPC=vmovdqu_xmm_xmm     
  xaddb %r8b, %bl                    #  4     0xb   4      OPC=xaddb_r8_r8         
  callq .move_r8b_to_byte_0_of_ymm1  #  5     0xf   5      OPC=callq_label         
  retq                               #  6     0x14  1      OPC=retq                
                                                                                   
.size target, .-target
