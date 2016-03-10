  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  xorq %r9, %r9                      #  1     0     3      OPC=xorq_r64_r64    
  callq .read_cf_into_rbx            #  2     0x3   5      OPC=callq_label     
  callq .move_byte_2_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label     
  cmoveq %r9, %rbx                   #  4     0xd   4      OPC=cmoveq_r64_r64  
  retq                               #  5     0x11  1      OPC=retq            
                                                                               
.size target, .-target
