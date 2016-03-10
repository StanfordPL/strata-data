  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vsubsd %xmm1, %xmm1, %xmm3         #  1     0     4      OPC=vsubsd_xmm_xmm_xmm       
  movq $0x0, %rbx                    #  2     0x4   10     OPC=movq_r64_imm64           
  vpunpckhqdq %ymm3, %ymm3, %ymm1    #  3     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_byte_3_of_ymm1_to_r8b  #  4     0x12  5      OPC=callq_label              
  xaddb %r8b, %bl                    #  5     0x17  4      OPC=xaddb_r8_r8              
  retq                               #  6     0x1b  1      OPC=retq                     
                                                                                        
.size target, .-target
