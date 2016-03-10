  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_cf_into_rbx  #  1     0    5      OPC=callq_label  
  addb %bl, %bh            #  2     0x5  2      OPC=addb_rh_r8   
  setle %bl                #  3     0x7  3      OPC=setle_r8     
  negb %bl                 #  4     0xa  2      OPC=negb_r8      
  retq                     #  5     0xc  1      OPC=retq         
                                                                 
.size target, .-target
