  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .clear_sf          #  1     0     5      OPC=callq_label  
  callq .read_sf_into_rbx  #  2     0x5   5      OPC=callq_label  
  callq .set_szp_for_ebx   #  3     0xa   5      OPC=callq_label  
  setnge %ah               #  4     0xf   3      OPC=setnge_rh    
  retq                     #  5     0x12  1      OPC=retq         
                                                                  
.size target, .-target
