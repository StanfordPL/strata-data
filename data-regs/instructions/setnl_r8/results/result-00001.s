  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_sf_into_rcx  #  1     0     5      OPC=callq_label  
  seto %dil                #  2     0x5   4      OPC=seto_r8      
  orl %ecx, %ecx           #  3     0x9   2      OPC=orl_r32_r32  
  xorb %cl, %dil           #  4     0xb   3      OPC=xorb_r8_r8   
  setle %bl                #  5     0xe   3      OPC=setle_r8     
  retq                     #  6     0x11  1      OPC=retq         
                                                                  
.size target, .-target
