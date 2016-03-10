  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP  Bytes  Opcode              
.target:                           #        0    0      OPC=<label>         
  movzwl %bx, %ecx                 #  1     0    3      OPC=movzwl_r32_r16  
  adcw %bx, %bx                    #  2     0x3  3      OPC=adcw_r16_r16    
  callq .move_032_016_ecx_r8w_r9w  #  3     0x6  5      OPC=callq_label     
  addw %r8w, %r8w                  #  4     0xb  4      OPC=addw_r16_r16    
  retq                             #  5     0xf  1      OPC=retq            
                                                                            
.size target, .-target
