  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setnle %bh               #  1     0    3      OPC=setnle_rh    
  negb %bh                 #  2     0x3  2      OPC=negb_rh      
  callq .read_cf_into_rbx  #  3     0x5  5      OPC=callq_label  
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target
