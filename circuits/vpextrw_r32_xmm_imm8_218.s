  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_byte_2_of_ymm1_to_r9b         #  1     0     5      OPC=callq_label      
  movq $0x80, %rbx                          #  2     0x5   10     OPC=movq_r64_imm64   
  andb %r9b, %bl                            #  3     0xf   3      OPC=andb_r8_r8       
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0x12  5      OPC=callq_label      
  cmovnow %dx, %bx                          #  5     0x17  4      OPC=cmovnow_r16_r16  
  retq                                      #  6     0x1b  1      OPC=retq             
                                                                                       
.size target, .-target
