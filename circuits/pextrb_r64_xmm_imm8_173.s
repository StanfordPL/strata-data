  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode              
.target:                              #        0    0      OPC=<label>         
  callq .move_byte_13_of_ymm1_to_r8b  #  1     0    5      OPC=callq_label     
  xorl %r12d, %r12d                   #  2     0x5  3      OPC=xorl_r32_r32    
  movswl %r12w, %ebx                  #  3     0x8  4      OPC=movswl_r32_r16  
  xchgb %bl, %r8b                     #  4     0xc  3      OPC=xchgb_r8_r8     
  retq                                #  5     0xf  1      OPC=retq            
                                                                               
.size target, .-target
