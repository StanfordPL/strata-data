  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %bx, %rcx  #  1     0    4      OPC=movswq_r64_r16  
  callq .set_cf     #  2     0x4  5      OPC=callq_label     
  rcll $0x1, %ecx   #  3     0x9  2      OPC=rcll_r32_one    
  adcw %bx, %bx     #  4     0xb  3      OPC=adcw_r16_r16    
  retq              #  5     0xe  1      OPC=retq            
                                                             
.size target, .-target
