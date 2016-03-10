  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label  
  callq .read_zf_into_rbx  #  2     0x5   5      OPC=callq_label  
  callq .write_cl_to_pf    #  3     0xa   5      OPC=callq_label  
  setnp %bl                #  4     0xf   3      OPC=setnp_r8     
  callq .set_szp_for_bx    #  5     0x12  5      OPC=callq_label  
  setnp %ah                #  6     0x17  3      OPC=setnp_rh     
  retq                     #  7     0x1a  1      OPC=retq         
                                                                  
.size target, .-target
