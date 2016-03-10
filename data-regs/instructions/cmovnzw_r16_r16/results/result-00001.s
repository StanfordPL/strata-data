  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movswq %bx, %rbx                #  1     0     4      OPC=movswq_r64_r16  
  cmoveq %rbx, %rcx               #  2     0x4   4      OPC=cmoveq_r64_r64  
  callq .move_016_008_cx_r8b_r9b  #  3     0x8   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx  #  4     0xd   5      OPC=callq_label     
  retq                            #  5     0x12  1      OPC=retq            
                                                                            
.size target, .-target
