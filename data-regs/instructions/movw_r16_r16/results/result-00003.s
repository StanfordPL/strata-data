  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  clc                      #  1     0    1      OPC=clc            
  callq .read_cf_into_rbx  #  2     0x1  5      OPC=callq_label    
  clc                      #  3     0x6  1      OPC=clc            
  decw %bx                 #  4     0x7  3      OPC=decw_r16       
  rcll $0x1, %ebx          #  5     0xa  2      OPC=rcll_r32_one   
  xchgw %cx, %bx           #  6     0xc  3      OPC=xchgw_r16_r16  
  retq                     #  7     0xf  1      OPC=retq           
                                                                   
.size target, .-target
