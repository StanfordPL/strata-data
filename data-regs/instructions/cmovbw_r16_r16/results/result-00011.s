  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode                
.target:             #        0    0      OPC=<label>           
  cmovcw %cx, %bx    #  1     0    4      OPC=cmovcw_r16_r16    
  popcntw %cx, %ax   #  2     0x4  5      OPC=popcntw_r16_r16   
  cmovnaew %bx, %bx  #  3     0x9  4      OPC=cmovnaew_r16_r16  
  retq               #  4     0xd  1      OPC=retq              
                                                                
.size target, .-target
