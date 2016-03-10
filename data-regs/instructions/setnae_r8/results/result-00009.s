  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label  
  setb %ch                 #  2     0x5   3      OPC=setb_rh      
  addb %bl, %ch            #  3     0x8   2      OPC=addb_rh_r8   
  callq .read_pf_into_rcx  #  4     0xa   5      OPC=callq_label  
  salq %cl, %rbx           #  5     0xf   3      OPC=salq_r64_cl  
  retq                     #  6     0x12  1      OPC=retq         
                                                                  
.size target, .-target
