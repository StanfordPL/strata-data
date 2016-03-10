  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movzbw %cl, %dx                   #  1     0     4      OPC=movzbw_r16_r8   
  callq .move_016_008_dx_r12b_r13b  #  2     0x4   5      OPC=callq_label     
  callq .move_008_016_r12b_r13b_dx  #  3     0x9   5      OPC=callq_label     
  movsbq %bl, %rcx                  #  4     0xe   4      OPC=movsbq_r64_r8   
  movswq %dx, %rbx                  #  5     0x12  4      OPC=movswq_r64_r16  
  retq                              #  6     0x16  1      OPC=retq            
                                                                              
.size target, .-target
