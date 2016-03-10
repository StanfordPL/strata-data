  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_sf_into_rbx  #  1     0     5      OPC=callq_label   
  callq .clear_zf          #  2     0x5   5      OPC=callq_label   
  setle %ah                #  3     0xa   3      OPC=setle_rh      
  rolw $0x1, %bx           #  4     0xd   3      OPC=rolw_r16_one  
  xaddb %bl, %ah           #  5     0x10  3      OPC=xaddb_rh_r8   
  retq                     #  6     0x13  1      OPC=retq          
                                                                   
.size target, .-target
