  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movzbl %cl, %r13d  #  1     0    4      OPC=movzbl_r32_r8  
  notl %r13d         #  2     0x4  3      OPC=notl_r32       
  cmc                #  3     0x7  1      OPC=cmc            
  adcb %r13b, %bl    #  4     0x8  3      OPC=adcb_r8_r8     
  cmc                #  5     0xb  1      OPC=cmc            
  retq               #  6     0xc  1      OPC=retq           
                                                             
.size target, .-target
