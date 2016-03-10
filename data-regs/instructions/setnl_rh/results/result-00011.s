  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode           
.target:           #        0    0      OPC=<label>      
  callq .clear_zf  #  1     0    5      OPC=callq_label  
  setle %dh        #  2     0x5  3      OPC=setle_rh     
  addb %dh, %dh    #  3     0x8  2      OPC=addb_rh_rh   
  sete %ah         #  4     0xa  3      OPC=sete_rh      
  retq             #  5     0xd  1      OPC=retq         
                                                         
.size target, .-target
