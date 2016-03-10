  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode           
.target:           #        0    0      OPC=<label>      
  setl %spl        #  1     0    4      OPC=setl_r8      
  salb $0x1, %spl  #  2     0x4  3      OPC=salb_r8_one  
  sete %ah         #  3     0x7  3      OPC=sete_rh      
  retq             #  4     0xa  1      OPC=retq         
                                                         
.size target, .-target
