  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode           
.target:           #        0    0      OPC=<label>      
  callq .clear_zf  #  1     0    5      OPC=callq_label  
  setnz %bh        #  2     0x5  3      OPC=setnz_rh     
  addb %bh, %ah    #  3     0x8  2      OPC=addb_rh_rh   
  retq             #  4     0xa  1      OPC=retq         
                                                         
.size target, .-target
