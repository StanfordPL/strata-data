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
  addb %bl, %dh            #  3     0x8  2      OPC=addb_rh_r8   
  callq .read_zf_into_rbx  #  4     0xa  5      OPC=callq_label  
  retq                     #  5     0xf  1      OPC=retq         
                                                                 
.size target, .-target
