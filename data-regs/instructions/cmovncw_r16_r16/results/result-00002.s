  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  callq .set_pf     #  1     0    5      OPC=callq_label      
  cmovcw %bx, %cx   #  2     0x5  4      OPC=cmovcw_r16_r16   
  cmovpew %cx, %bx  #  3     0x9  4      OPC=cmovpew_r16_r16  
  retq              #  4     0xd  1      OPC=retq             
                                                              
.size target, .-target
