  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_pf_into_rbx  #  1     0     5      OPC=callq_label  
  callq .set_szp_for_bx    #  2     0x5   5      OPC=callq_label  
  callq .read_pf_into_rcx  #  3     0xa   5      OPC=callq_label  
  callq .write_cl_to_pf    #  4     0xf   5      OPC=callq_label  
  setpo %ah                #  5     0x14  3      OPC=setpo_rh     
  retq                     #  6     0x17  1      OPC=retq         
                                                                  
.size target, .-target
