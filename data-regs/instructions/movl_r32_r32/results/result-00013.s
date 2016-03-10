  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  callq .move_032_016_ecx_r8w_r9w  #  1     0     5      OPC=callq_label    
  xorw %r9w, %r8w                  #  2     0x5   4      OPC=xorw_r16_r16   
  callq .read_of_into_rbx          #  3     0x9   5      OPC=callq_label    
  xchgl %ebx, %ecx                 #  4     0xe   2      OPC=xchgl_r32_r32  
  retq                             #  5     0x10  1      OPC=retq           
                                                                            
.size target, .-target
