  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  callq .move_byte_7_of_ymm1_to_r8b         #  2     0x5   5      OPC=callq_label      
  popcntl %r9d, %ecx                        #  3     0xa   5      OPC=popcntl_r32_r32  
  callq .read_of_into_rbx                   #  4     0xf   5      OPC=callq_label      
  xchgb %bl, %r8b                           #  5     0x14  3      OPC=xchgb_r8_r8      
  retq                                      #  6     0x17  1      OPC=retq             
                                                                                       
.size target, .-target
