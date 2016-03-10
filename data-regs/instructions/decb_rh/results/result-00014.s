  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  xorb %al, %al     #  1     0     2      OPC=xorb_r8_r8       
  cwtl              #  2     0x2   1      OPC=cwtl             
  cwtd              #  3     0x3   2      OPC=cwtd             
  addb %ah, %dh     #  4     0x5   2      OPC=addb_rh_rh       
  cmovnew %ax, %dx  #  5     0x7   4      OPC=cmovnew_r16_r16  
  decl %eax         #  6     0xb   2      OPC=decl_r32         
  xaddb %al, %dh    #  7     0xd   3      OPC=xaddb_rh_r8      
  retq              #  8     0x10  1      OPC=retq             
                                                               
.size target, .-target
