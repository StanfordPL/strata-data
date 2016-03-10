  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  xorl %r9d, %r9d                    #  1     0    3      OPC=xorl_r32_r32    
  callq .move_byte_2_of_ymm1_to_r9b  #  2     0x3  5      OPC=callq_label     
  movzwl %r9w, %ebx                  #  3     0x8  4      OPC=movzwl_r32_r16  
  setnae %bh                         #  4     0xc  3      OPC=setnae_rh       
  retq                               #  5     0xf  1      OPC=retq            
                                                                              
.size target, .-target
