  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  cwtl                               #  1     0    1      OPC=cwtl           
  movq %rax, %rdx                    #  2     0x1  3      OPC=movq_r64_r64   
  callq .move_032_016_edx_r12w_r13w  #  3     0x4  5      OPC=callq_label    
  xchgw %dx, %r13w                   #  4     0x9  4      OPC=xchgw_r16_r16  
  retq                               #  5     0xd  1      OPC=retq           
                                                                             
.size target, .-target
