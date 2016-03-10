  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movb %ah, %al     #  1     0    2      OPC=movb_r8_rh      
  xaddb %ah, %bl    #  2     0x2  3      OPC=xaddb_r8_rh     
  movzwl %ax, %ebx  #  3     0x5  3      OPC=movzwl_r32_r16  
  retq              #  4     0x8  1      OPC=retq            
                                                             
.size target, .-target
