  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setng %dl           #  1     0    3      OPC=setng_r8         
  addb %dl, %dl       #  2     0x3  2      OPC=addb_r8_r8       
  cmovnal %ecx, %ebx  #  3     0x5  3      OPC=cmovnal_r32_r32  
  retq                #  4     0x8  1      OPC=retq             
                                                                
.size target, .-target
