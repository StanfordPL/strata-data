  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP  Bytes  Opcode             
.target:                          #        0    0      OPC=<label>        
  callq .move_016_008_bx_r8b_r9b  #  1     0    5      OPC=callq_label    
  clc                             #  2     0x5  1      OPC=clc            
  movsbl %r9b, %ebp               #  3     0x6  4      OPC=movsbl_r32_r8  
  adcl %ebp, %ebp                 #  4     0xa  2      OPC=adcl_r32_r32   
  adcw %bx, %bx                   #  5     0xc  3      OPC=adcw_r16_r16   
  retq                            #  6     0xf  1      OPC=retq           
                                                                          
.size target, .-target
