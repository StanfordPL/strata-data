  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  xorl %edi, %edi                               #  1     0     2      OPC=xorl_r32_r32             
  callq .read_zf_into_rbx                       #  2     0x2   5      OPC=callq_label              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x7   5      OPC=callq_label              
  vfmadd231sd %xmm4, %xmm7, %xmm1               #  4     0xc   5      OPC=vfmadd231sd_xmm_xmm_xmm  
  callq .move_byte_9_of_ymm1_to_r9b             #  5     0x11  5      OPC=callq_label              
  xchgb %r9b, %bl                               #  6     0x16  3      OPC=xchgb_r8_r8              
  retq                                          #  7     0x19  1      OPC=retq                     
                                                                                                   
.size target, .-target
