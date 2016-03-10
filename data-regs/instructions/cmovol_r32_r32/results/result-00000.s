  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setno %r9b         #  1     0    4      OPC=setno_r8        
  salb $0x1, %r9b    #  2     0x4  3      OPC=salb_r8_one     
  cmovel %ecx, %ebx  #  3     0x7  3      OPC=cmovel_r32_r32  
  retq               #  4     0xa  1      OPC=retq            
                                                              
.size target, .-target
