  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movswq %bx, %rdx                  #  1     0     4      OPC=movswq_r64_r16  
  callq .move_016_008_cx_r10b_r11b  #  2     0x4   5      OPC=callq_label     
  callq .move_008_016_r10b_r11b_bx  #  3     0x9   5      OPC=callq_label     
  movslq %edx, %rcx                 #  4     0xe   3      OPC=movslq_r64_r32  
  retq                              #  5     0x11  1      OPC=retq            
                                                                              
.size target, .-target
