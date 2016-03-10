  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setp %al           #  1     0    3      OPC=setp_r8         
  movb %ch, %ch      #  2     0x3  2      OPC=movb_rh_rh      
  salb $0x1, %al     #  3     0x5  2      OPC=salb_r8_one     
  cmovel %ecx, %ebx  #  4     0x7  3      OPC=cmovel_r32_r32  
  retq               #  5     0xa  1      OPC=retq            
                                                              
.size target, .-target
