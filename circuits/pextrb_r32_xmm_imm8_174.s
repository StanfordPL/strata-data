  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  vcvttss2sil %xmm1, %ebx             #  1     0     4      OPC=vcvttss2sil_r32_xmm  
  popcntl %ebx, %eax                  #  2     0x4   4      OPC=popcntl_r32_r32      
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label          
  callq .read_of_into_rbx             #  4     0xd   5      OPC=callq_label          
  xchgb %bl, %r8b                     #  5     0x12  3      OPC=xchgb_r8_r8          
  retq                                #  6     0x15  1      OPC=retq                 
                                                                                     
.size target, .-target
