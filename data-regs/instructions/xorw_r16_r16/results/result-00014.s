  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_016_008_bx_r8b_r9b  #  1     0     5      OPC=callq_label     
  movsbq %r9b, %rbx               #  2     0x5   4      OPC=movsbq_r64_r8   
  callq .move_008_016_r8b_r9b_bx  #  3     0x9   5      OPC=callq_label     
  movswq %cx, %rcx                #  4     0xe   4      OPC=movswq_r64_r16  
  xorq %rcx, %rbx                 #  5     0x12  3      OPC=xorq_r64_r64    
  retq                            #  6     0x15  1      OPC=retq            
                                                                            
.size target, .-target
