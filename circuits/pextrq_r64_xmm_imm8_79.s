  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm5    #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_byte_8_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label              
  movq %xmm5, %rbx                   #  3     0x9   5      OPC=movq_r64_xmm             
  xaddb %bl, %r9b                    #  4     0xe   4      OPC=xaddb_r8_r8              
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
