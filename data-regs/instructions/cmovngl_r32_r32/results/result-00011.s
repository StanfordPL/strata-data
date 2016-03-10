  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setnle %ah          #  1     0    3      OPC=setnle_rh        
  addb %ah, %ah       #  2     0x3  2      OPC=addb_rh_rh       
  cmovbel %ecx, %ebx  #  3     0x5  3      OPC=cmovbel_r32_r32  
  retq                #  4     0x8  1      OPC=retq             
                                                                
.size target, .-target
