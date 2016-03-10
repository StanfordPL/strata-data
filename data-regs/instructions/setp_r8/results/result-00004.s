  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setnp %dh                #  1     0    3      OPC=setnp_rh     
  shlb $0x1, %dh           #  2     0x3  2      OPC=shlb_rh_one  
  callq .read_pf_into_rbx  #  3     0x5  5      OPC=callq_label  
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target
