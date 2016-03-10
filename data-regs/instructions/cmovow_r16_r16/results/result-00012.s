  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  seto %r13b        #  1     0    4      OPC=seto_r8         
  salb $0x1, %r13b  #  2     0x4  3      OPC=salb_r8_one     
  movb %bh, %bh     #  3     0x7  2      OPC=movb_rh_rh      
  cmovaw %cx, %bx   #  4     0x9  4      OPC=cmovaw_r16_r16  
  retq              #  5     0xd  1      OPC=retq            
                                                             
.size target, .-target
