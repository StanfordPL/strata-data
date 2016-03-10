  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label  
  callq .read_zf_into_rbx  #  2     0x5   5      OPC=callq_label  
  addb %cl, %ch            #  3     0xa   2      OPC=addb_rh_r8   
  callq .read_pf_into_rcx  #  4     0xc   5      OPC=callq_label  
  salq %cl, %rbx           #  5     0x11  3      OPC=salq_r64_cl  
  setnp %ah                #  6     0x14  3      OPC=setnp_rh     
  retq                     #  7     0x17  1      OPC=retq         
                                                                  
.size target, .-target
