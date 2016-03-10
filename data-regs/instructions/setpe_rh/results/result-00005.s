  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_pf_into_rbx  #  1     0    5      OPC=callq_label  
  addb %bl, %bh            #  2     0x5  2      OPC=addb_rh_r8   
  movb %bh, %bh            #  3     0x7  2      OPC=movb_rh_rh   
  movb %bh, %ah            #  4     0x9  2      OPC=movb_rh_rh   
  retq                     #  5     0xb  1      OPC=retq         
                                                                 
.size target, .-target
