  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  orb %bl, %bh                       #  1     0    2      OPC=orb_rh_r8       
  movswq %bx, %r9                    #  2     0x2  4      OPC=movswq_r64_r16  
  callq .move_r9b_to_byte_6_of_ymm1  #  3     0x6  5      OPC=callq_label     
  retq                               #  4     0xb  1      OPC=retq            
                                                                              
.size target, .-target
