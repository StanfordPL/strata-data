  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  movzbw %ah, %dx                   #  1     0    4      OPC=movzbw_r16_rh  
  callq .move_016_008_dx_r12b_r13b  #  2     0x4  5      OPC=callq_label    
  movsbq %r12b, %rbx                #  3     0x9  4      OPC=movsbq_r64_r8  
  retq                              #  4     0xd  1      OPC=retq           
                                                                            
.size target, .-target
