  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setle %ah          #  1     0    3      OPC=setle_rh        
  orl %ecx, %ecx     #  2     0x3  2      OPC=orl_r32_r32     
  xaddb %ah, %ah     #  3     0x5  3      OPC=xaddb_rh_rh     
  cmovel %ecx, %ebx  #  4     0x8  3      OPC=cmovel_r32_r32  
  retq               #  5     0xb  1      OPC=retq            
                                                              
.size target, .-target
