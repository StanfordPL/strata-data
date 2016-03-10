  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label  
  setle %dh                #  2     0x5  3      OPC=setle_rh     
  incl %ebx                #  3     0x8  2      OPC=incl_r32     
  xaddb %bl, %dh           #  4     0xa  3      OPC=xaddb_rh_r8  
  retq                     #  5     0xd  1      OPC=retq         
                                                                 
.size target, .-target
