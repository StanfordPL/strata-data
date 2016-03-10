  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  movzbq %cl, %rsi         #  1     0    4      OPC=movzbq_r64_r8  
  incb %cl                 #  2     0x4  2      OPC=incb_r8        
  callq .read_sf_into_rbx  #  3     0x6  5      OPC=callq_label    
  xchgw %si, %bx           #  4     0xb  3      OPC=xchgw_r16_r16  
  retq                     #  5     0xe  1      OPC=retq           
                                                                   
.size target, .-target
