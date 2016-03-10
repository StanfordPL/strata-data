  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  setnge %bl               #  1     0    3      OPC=setnge_r8        
  addb %bl, %bl            #  2     0x3  2      OPC=addb_r8_r8       
  callq .read_zf_into_rbx  #  3     0x5  5      OPC=callq_label      
  cmovnzl %ebx, %ebx       #  4     0xa  3      OPC=cmovnzl_r32_r32  
  retq                     #  5     0xd  1      OPC=retq             
                                                                     
.size target, .-target
