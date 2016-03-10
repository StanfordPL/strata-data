  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  seto %bpl          #  1     0    4      OPC=seto_r8         
  setnl %ah          #  2     0x4  3      OPC=setnl_rh        
  movsbl %bpl, %esi  #  3     0x7  4      OPC=movsbl_r32_r8   
  cmovel %esi, %eax  #  4     0xb  3      OPC=cmovel_r32_r32  
  retq               #  5     0xe  1      OPC=retq            
                                                              
.size target, .-target
